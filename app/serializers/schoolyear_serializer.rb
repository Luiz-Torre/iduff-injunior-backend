class SchoolyearSerializer < ActiveModel::Serializer
  attributes :id, :status, :year, :half
end
