class CourseSerializer < ActiveModel::Serializer
  attributes :id, :numerofstudent, :knowledgearea, :headquarterscampus, :name
  has_one :subject
  has_one :coursecoordinator
end
