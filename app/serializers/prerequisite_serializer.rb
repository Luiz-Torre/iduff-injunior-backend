class PrerequisiteSerializer < ActiveModel::Serializer
  attributes :id
  has_one :subject
end
