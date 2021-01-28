class CourseSerializer < ActiveModel::Serializer
  attributes :id, :code,:numberofstudent, :knowledgearea, :headquarterscampus, :name
  has_one :coursecoordinator
end
