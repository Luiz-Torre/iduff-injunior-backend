class Teacher < ApplicationRecord
  belongs_to :user
  has_many :licenses
  has_one :schoolclass
  belongs_to :department

  validates :user_id, uniqueness: true
  validates :department_id, presence: :true


  
  
end
