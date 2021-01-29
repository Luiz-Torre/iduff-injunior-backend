class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :department_id, :name_department, :user_id, :name_teacher

  def name_department
    self.object.department&.name
  end
  

  def name_teacher
    self.object.user.name
  end

end
