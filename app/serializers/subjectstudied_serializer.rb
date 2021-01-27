class SubjectstudiedSerializer < ActiveModel::Serializer
  attributes :id
  has_one :student
  has_one :subject
end
