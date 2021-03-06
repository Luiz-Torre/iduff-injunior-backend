class Department < ApplicationRecord
  belongs_to :departmentcoordinator
  has_many :subjects
  has_many :teachers
  
  validates :name, :knowledgearea, :headquarterscampus, presence: true 
  validates :departmentcoordinator_id, uniqueness: true, presence: true, on: :create

end
