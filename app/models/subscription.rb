class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :schoolclass

  validates :user_id, :schoolclass_id ,presence: true
  after_validation :check_prerequisites
  
  def check_subs
    if Subscription.find_by(user_id: self.user_id,schoolclass_id: self.schoolclass_id).present?
      errors.add :already_exist_license, "Já inscrito nessa materia"
    
    else
      checknumberofstudents
    end
  end


  def checknumberofstudents
    if Schoolclass.find(self.schoolclass_id).vacancy > Schoolclass.find(self.schoolclass_id).numberofstudents
      
      howmanyhasclass
    else
     return errors.add :maxs, "Numero Maximo de Alunos"
    end
  end

  def howmanyhasclass
    schoolclass = Schoolclass.find(self.schoolclass_id)
    value = schoolclass.numberofstudents + 1
    
    schoolclass.update_attribute(:numberofstudents, value)
  end




  def  check_prerequisites
    values_prerequisites = Prerequisite.where(subject_id: 1).select("prerequisitecode")
    values_pre_list = []
    values_prerequisites.each {|x| values_pre_list.append(x.prerequisitecode) }
    values_subjectstudieds = self.user.student.subjectstudieds.select("subject_id")
    values_subjectstudieds_list = []
    values_subjectstudieds.each {|x| values_subjectstudieds_list.append(x.subject_id) }

    verify = (values_pre_list - values_subjectstudieds_list).empty?

      if verify == true
        check_subs
      else
        return errors.add :prereq, "Você não tem os pre-requisitos para essa aula"

      end   
      
  end


end
