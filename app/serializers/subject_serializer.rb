class SubjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :knowledgearea, :workload, :period
end
