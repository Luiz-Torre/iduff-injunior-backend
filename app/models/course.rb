class Course < ApplicationRecord
  belongs_to :coursecoordinator

  validates :code,:coursecoordinator_id, :knowledgearea, :headquarterscampus, :name ,presence: true


end
