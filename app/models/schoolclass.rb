class Schoolclass < ApplicationRecord
  belongs_to :subject
  belongs_to :teacher
  belongs_to :schoolyears

  validates :calendar, :vacancy,:classroom, :name, :subject_id,presence: true
  validates :teacher_id , presence: true, uniqueness: true


  # after_validation :checklicenseteacher

  # def checklicenseteacher
  #   if License.find_by(teacher_id: self.teacher_id,subject_id: self.subject_id).present?
  #     return true
    
  # else
  #   errors.add :already_exist_license, "O professor não tem licensa para dar essa aula"
  # end
  # end




end
