class License < ApplicationRecord
  belongs_to :teacher
  belongs_to :subject

  validates :teacher_id, :subject_id ,presence: true

end
