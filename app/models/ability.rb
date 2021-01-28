# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
      if user.principal?
        can :manage, User
        can :manage, Department

      elsif user.departmentcoordinator?
      
        depart = Departmentcoordinator.find_by(user_id: user.id).id
        
        can :manage, User, role: 1
        can :manage, Subject        
        can :update, Department, departmentcoordinator_id: depart
      else
        can :read , User
      end  
    
    end
end
