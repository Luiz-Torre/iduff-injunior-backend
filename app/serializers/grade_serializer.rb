class GradeSerializer < ActiveModel::Serializer
  attributes :id,:nomestudent, :gradeone, :gradetwo, :finalmedia
 

  def nomestudent
    self.object.student.user.name
  end
  

  def finalmedia 
    grade1 = Grade.find_by(student_id: self.object.student.id).gradeone
    grade2 = Grade.find_by(student_id: self.object.student.id).gradetwo

    media = (grade1 + grade2)/2
    if media >= 6
      return "Você passou. Sua media foi " + media.to_s
    
    else
      return "Você foi reprovado. Sua media foi " + media.to_s
    end

    end
  end
