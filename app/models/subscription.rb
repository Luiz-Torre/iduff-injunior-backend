class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :schoolclass


  before_create :checknumberofstudents

  def checknumberofstudents
  byebug
    if Schoolclass.find(self.schoolclass_id).vacancy >= Schoolclass.find(self.schoolclass_id).numberofstudents
      :howmanyhasclass
    else
      errors.add :max, "Numero Maximo de Alunos"
    end
  end

  def howmanyhasclass
    schoolclass = Schoolclass.find(self.schoolclass_id)
    value = schoolclass.numberofstudents + 1
    
    schoolclass.update_attribute(:numberofstudents, value)
  end
end
