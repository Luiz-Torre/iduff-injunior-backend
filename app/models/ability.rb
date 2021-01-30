class Ability
  include CanCan::Ability   
 
 
  

  def initialize(user)
    user ||= User.new


      if Schoolyear.ids.blank?
        Schoolyear.create(year: (Time.now.year).to_s, half: "1", status: 0)
      

      else
        verify = Schoolyear.find(1).status
      end
    
      if user.principal?
        can :manage, :all

      elsif user.departmentcoordinator?
        if verify == "planning"
          can :manage, Schoolclass
          can :manage, Subjectoferred
          can :manage, Teacher, department_id: user.departmentcoordinator.department.id
          can :manage, License      

        end

        if verify == "registrations"
          can :read , Subscription
        end
        can :create, User, role: 1
        can :manage, Subject        
        can :update , User, id: user.id
        can :read, Course
        can :update, Department, department_id: user.departmentcoordinator.department.id


      elsif user.coursecoordinator?
        course_ability = Coursecoordinator.find_by(user_id: user.id).id
        
        can :read, Subjectoferred
        can :update , User, id: user.id
        can :create, User, role: 0
        can :update, Course, coursecoordinator_id: course_ability
      

      elsif user.teacher?
        if verify == "progress"
          can :manage , Grade 
        end
        can :read, Course
        can :update , User, id: user.id



      elsif user.student?
        if verify == "registrations"
          can :manage , Subscription, user_id: user.id
        end
        can :read , Grade, id: user.student.id
        can :update , User, id: user.id
        can :read, Course

      else
      end  

    



      

  end

  
    
end


