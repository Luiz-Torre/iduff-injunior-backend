class Course < ApplicationRecord
  belongs_to :subject
  belongs_to :coursecoordinator

  validates :subject_id, :nationality, :state, :RG,:birthdate ,presence: true


end
