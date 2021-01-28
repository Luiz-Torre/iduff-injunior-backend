class CourseSerializer < ActiveModel::Serializer
  attributes :id, :numberofstudent, :knowledgearea, :headquarterscampus, :name
  has_one :coursecoordinator
end
