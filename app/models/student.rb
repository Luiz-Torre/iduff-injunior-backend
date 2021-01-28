class Student < ApplicationRecord
  belongs_to :user
  has_many :grades
  has_many :subjectstudieds
end
