class Guest < ApplicationRecord
  belongs_to :party

  validates_presence_of :name
end
