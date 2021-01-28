class Subjectstudied < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  
  validates :student_id, :subject_id ,presence: true
end
