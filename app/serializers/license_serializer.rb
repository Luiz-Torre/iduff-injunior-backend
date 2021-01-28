class LicenseSerializer < ActiveModel::Serializer
  attributes :id ,:teacher_id,:name_teacher,:subject_id, :name_subject
has_many :subject 

def name_teacher
  User.find(Teacher.find(self.object.teacher_id).user_id).name
end
def name_subject
  Subject.find(self.object.subject_id).name
end

end
