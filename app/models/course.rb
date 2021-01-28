class Course < ApplicationRecord
  belongs_to :coursecoordinator
  has_many :subjectoferreds


  validates :code,:coursecoordinator_id, :knowledgearea, :headquarterscampus, :name ,presence: true


end
