class SubjectoferredSerializer < ActiveModel::Serializer
  attributes :id, :subject_id, :subjectname, :course_id, :coursename
  
  
  def subjectname
    Subject.find(self.object.subject_id).name
  end

  def coursename
    Course.find(self.object.course_id).name
  end

end
