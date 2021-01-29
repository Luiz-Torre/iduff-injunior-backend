class Teacher < ApplicationRecord
  belongs_to :user
  has_many :licenses
  has_one :schoolclass
  belongs_to :department

end
