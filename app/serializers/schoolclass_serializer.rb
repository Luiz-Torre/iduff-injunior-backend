class SchoolclassSerializer < ActiveModel::Serializer
  attributes :id, :calendar, :classroom, :numberofstudents, :name, :vacancy, :grade_id
  has_one :subject
  has_one :teacher
end
