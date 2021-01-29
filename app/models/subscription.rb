class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :schoolclass

  validates :user_id, :schoolclass_id ,presence: true
  after_validation :check_subs
  
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
end
