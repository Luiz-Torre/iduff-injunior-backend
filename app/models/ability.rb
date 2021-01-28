# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
      if user.principal?
        can :manage, User
        can :manage, Department
        can :manage, Course


      elsif user.departmentcoordinator?
      
        depart_ability = Departmentcoordinator.find_by(user_id: user.id).id
        
        can :manage, User, role: 1
        can :manage, Schoolclass
        can :manage, License
        can :manage, Subject        
        can :update, Department, departmentcoordinator_id: depart_ability


      elsif user.coursecoordinator?

        can :manage, User, role: 0
        course_ability = Coursecoordinator.find_by(user_id: user.id).id

        can :update, Course, coursecoordinator_id: course_ability

      else
        can :read , User
      end  

     


    
    end
end
