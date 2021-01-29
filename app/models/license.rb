class License < ApplicationRecord
  belongs_to :teacher
  belongs_to :subject

  validates :teacher_id, :subject_id ,presence: true
  after_validation :check_license
  
  def check_license
    if License.find_by(teacher_id: self.teacher_id,subject_id: self.subject_id).present?
      errors.add :already_exist_license, "Licença duplicada."
    end
  end

end
