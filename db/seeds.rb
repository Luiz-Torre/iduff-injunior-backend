# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Diretor", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"diretor@id.uff.br", role:4, cpf:"000.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Departamento 1", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordepartamento@id.uff.br", role:3, cpf:"001.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Departamento 2", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordepartamento2@id.uff.br", role:3, cpf:"002.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Departamento 3", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordepartamento2@id.uff.br", role:3, cpf:"003.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Curso", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordecurso@id.uff.br", role:2, cpf:"004.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Curso 2", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordecurso2@id.uff.br", role:2, cpf:"005.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Curso 3", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordecurso3@id.uff.br", role:2, cpf:"006.000.000-00", password:"123123", password_confirmation:"123123")
Department.create(name: "Ciencia da Computação", knowledgearea: "Tecnologia", headquarterscampus: "Praia Vermelha", departmentcoordinator_id: 1)
a = Department.create(name: "GMA", knowledgearea: "Matematica", headquarterscampus: "Valonguinho", departmentcoordinator_id: 2)
Department.create(name: "Biologia", knowledgearea: "Ciencias Biologicas", headquarterscampus: "Gragoata", departmentcoordinator_id: 3)
Subject.create(name: "Calculo 1", knowledgearea: "Matematica", workload: "60 horas", department_id: 2)
Subject.create(name: "Fundamento de Protistas", knowledgearea: "Biologia", workload: "60 horas", department_id: 3)
Subject.create(name: "Programação Estruturada", knowledgearea: "Tecnologia", workload: "60 horas", department_id: a.id)
License.create(teacher_id: 1,"subject_id":3)



