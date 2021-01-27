class GradeSerializer < ActiveModel::Serializer
  attributes :id, :gradeone, :gradetwo
  has_one :student
  has_one :subject
end
