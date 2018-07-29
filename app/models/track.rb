class Track < ApplicationRecord
  belongs_to :party
  belongs_to :guest

  validates_presence_of :name, :address, :party, :guest
end
