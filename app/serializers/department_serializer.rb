class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :knowledgearea, :headquarterscampus
  has_one :departmentcoordinator
end
