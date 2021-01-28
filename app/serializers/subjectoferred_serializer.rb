class SubjectoferredSerializer < ActiveModel::Serializer
  attributes :id
  has_many :subject
  has_many :course
end
