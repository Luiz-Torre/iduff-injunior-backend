class User < ApplicationRecord
    has_secure_password
    has_one :student
    has_one :teacher
    has_one :principal
    has_one :departmentcoordinator
    has_one :coursecoordinator
    
    validates :name, :nationality, :state, :RG,:birthdate ,presence: true 
    validates :email, format: {with: /\b[A-Z0-9._%a-z\-]+@id\.uff\.br\z/, message: "Utilize o seu email da UFF. Exemplo: meuemail@id.uff.br"}
    validates :cpf, format: {with: /\b\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "Utilize um cpf valido. Exemplo: 000.000.000-00"}
    validates :email, :cpf, presence: true, uniqueness: true
    
    enum role: {student: 0, teacher:1, coursecoordinator:2, departmentcoordinator: 3, principal: 4}

    after_create :createRole
    def createRole
        if self.student?
            userRole = Student.new(user_id: self.id)
        elsif self.teacher?
            userRole = Teacher.new(user_id: self.id)
        elsif self.coursecoordinator?
            userRole= Coursecoordinator.new(user_id: self.id)
        elsif self.departmentcoordinator?
            userRole= Departmentcoordinator.new(user_id: self.id)
        elsif self.principal?
            userRole= Principal.new(user_id: self.id)
        end
        userRole.save
    end
end
