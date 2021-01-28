class Teacher < ApplicationRecord
  belongs_to :user
  has_many :licenses
  has_one :schoolclass
end
