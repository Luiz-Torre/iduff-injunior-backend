class GradeSerializer < ActiveModel::Serializer
  attributes :id, :gradeone, :gradetwo
 
  belongs_to :student
  belongs_to :subject  


  byebug
end
