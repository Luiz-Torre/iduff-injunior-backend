class Student < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :grades
  has_many :subjectstudieds

  validates :course_id ,presence: true
  validates :user_id,presence: true, uniqueness: true

  after_create :howmanyhas


  def howmanyhas
    course = Course.find(self.course_id)
    value = course.numberofstudent + 1

    course.update_attribute(:numberofstudent, value)
  end
end
