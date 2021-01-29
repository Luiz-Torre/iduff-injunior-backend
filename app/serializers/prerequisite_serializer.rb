class PrerequisiteSerializer < ActiveModel::Serializer
  attributes :id, :prerequisitecode
  has_one :subject
end
