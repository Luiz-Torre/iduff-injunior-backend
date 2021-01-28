class Schoolclass < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
 
  validates :calendar, :classroom, :name, :subject_id, :teacher_id ,presence: true
end
