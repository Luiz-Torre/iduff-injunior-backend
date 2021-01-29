class Subjectoferred < ApplicationRecord
  belongs_to :subject
  belongs_to :course

  validates :subject, :course ,presence: true
  after_validation :check_subjectferred
  
  def check_subjectferred
    if Subjectoferred.find_by(course_id: self.course_id,subject_id: self.subject_id).present?
      errors.add :already_exist, "Materia no curso já existe"
    end
  end
end

