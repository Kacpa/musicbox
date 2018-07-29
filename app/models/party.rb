class Party < ApplicationRecord
  has_many :tracks
  has_many :guests
  before_save :generate_code

  validates_presence_of :name

  def generate_code
    if access_code.blank?
      chars =('a'..'z').to_a
      digits = (0..9).to_a
      self.access_code = (chars + digits).sample(5).join
    end
  end
end
