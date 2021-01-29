class Subjectstudied < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  
  validates :student_id, :subject_id ,presence: true
  after_validation :check_subject
  
  def check_subject
    if Subjectstudied.find_by(subject_id: self.subject_id,student_id: self.student_id).present?
      errors.add :already_exist_subject, "Já cadastrado essa matéria como cursada para esse aluno"
    end
end

end
