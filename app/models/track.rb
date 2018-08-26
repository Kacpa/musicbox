class Track < ApplicationRecord
  belongs_to :party
  belongs_to :guest

  validates_presence_of :name, :address, :party, :guest

  after_create :notify_party

  def notify_party
    Pusher.trigger("party-#{party_id}", 'new-track', self.as_json)
  end
end
