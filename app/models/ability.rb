class Ability
  include CanCan::Ability   
 
 
  

  def initialize(user)


      # if Schoolyear.ids.blank?
      #   Schoolyear.create(year: (Time.now.year).to_s, half: "1", status: 0)
    
      # else
      #   return true
      # end  
    

      if user.principal?
        can :manage, :all

      elsif user.departmentcoordinator?
      
        can :update , User, id: user.id
        can :read, Course
        can :create, User, role: 1
        can :manage, Schoolclass
        can :manage, Subjectoferred
        can :manage, Teacher, department_id: user.departmentcoordinator.department.id
        can :manage, License
        can :manage, Subject        
        can :update, Department, department_id: user.departmentcoordinator.department.id


      elsif user.coursecoordinator?
        course_ability = Coursecoordinator.find_by(user_id: user.id).id
        
        can :read, Subjectoferred
        can :update , User, id: user.id
        can :create, User, role: 0
        can :update, Course, coursecoordinator_id: course_ability
      

      elsif user.teacher?

        can :manage , Grade 



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


