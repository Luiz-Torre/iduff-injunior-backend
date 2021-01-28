class Course < ApplicationRecord
  belongs_to :coursecoordinator

  validates :coursecoordinator_id, :knowledgearea, :headquarterscampus, :name ,presence: true


end
