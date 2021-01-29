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

        can :update , User, id: user.id
        can :read, Course
        can :create, User, role: 1
        can :manage, Schoolclass
        can :manage, Subjectoferred
        can :manage, License
        can :manage, Subject        
        can :update, Department, departmentcoordinator_id: depart_ability


      elsif user.coursecoordinator?
        course_ability = Coursecoordinator.find_by(user_id: user.id).id
        
        can :read, Subjectoferred
        can :update , User, id: user.id
        can :create, User, role: 0
        can :update, Course, coursecoordinator_id: course_ability
      
      elsif user.student?
        can :manage , Subscription, user_id: user.id
        can :update , User, id: user.id
        can :read, Course


      else
        can :update , User, id: user.id
        can :read, Course

      end  

     


    
    end
end
