class Schoolclass < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
 
  validates :calendar, :classroom, :name, :subject_id,presence: true
  validates :teacher_id , presence: true, uniqueness: true

end
