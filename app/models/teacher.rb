class Teacher < ApplicationRecord
  belongs_to :user
  has_many :licenses
  has_one :schoolclass

  validates :schoolclass ,uniqueness: true
end
