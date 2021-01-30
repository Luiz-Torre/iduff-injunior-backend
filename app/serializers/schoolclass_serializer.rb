class SchoolclassSerializer < ActiveModel::Serializer
  attributes :id, :calendar, :classroom, :numberofstudents, :name, :vacancy
  has_one :subject
  has_one :teacher
end
