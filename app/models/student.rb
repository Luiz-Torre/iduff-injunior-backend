class Student < ApplicationRecord
  belongs_to :user
  belongs_to :couse
  has_many :grades
  has_many :subjectstudieds


  validates :course_id ,presence: true 
end
