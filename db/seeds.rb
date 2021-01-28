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
User.create(name: "Coordenador de Departamento 3", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordepartamento3@id.uff.br", role:3, cpf:"003.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Curso", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordecurso@id.uff.br", role:2, cpf:"004.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Curso 2", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordecurso2@id.uff.br", role:2, cpf:"005.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Coordenador de Curso 3", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordecurso3@id.uff.br", role:2, cpf:"006.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Professor 1", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"professor@id.uff.br", role:1, cpf:"007.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Professor 2", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"professor2@id.uff.br", role:1, cpf:"008.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Aluno 1", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"aluno@id.uff.br", role:0, cpf:"009.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Aluno 2", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"aluno2@id.uff.br", role:0, cpf:"010.000.000-00", password:"123123", password_confirmation:"123123")

Department.create(name: "Ciencia da Computação", knowledgearea: "Tecnologia", headquarterscampus: "Praia Vermelha", departmentcoordinator_id: 1)
Department.create(name: "GMA", knowledgearea: "Matematica", headquarterscampus: "Valonguinho", departmentcoordinator_id: 2)
Department.create(name: "Biologia", knowledgearea: "Ciencias Biologicas", headquarterscampus: "Gragoata", departmentcoordinator_id: 3)

Subject.create(name: "Calculo 1", knowledgearea: "Matematica", workload: "60 horas", department_id: 2)
Subject.create(name: "Fundamento de Protistas", knowledgearea: "Biologia", workload: "60 horas", department_id: 3)
Subject.create(name: "Programação Estruturada", knowledgearea: "Tecnologia", workload: "60 horas", department_id: 1)
Subject.create(name: "Programação Listada em algoritmo espacial", knowledgearea: "Tecnologia", workload: "60 horas", department_id: 1)


License.create(teacher_id: 1, subject_id:3)
License.create(teacher_id: 1, subject_id:2)
License.create(teacher_id: 2, subject_id:1)
License.create(teacher_id: 2, subject_id:3)


Course.create(code:"TCC01",coursecoordinator_id:1, knowledgearea: "Tecnologia da Informação", headquarterscampus: "Praia Vermelha",  name:"Ciencias da Computação")
Course.create(code:"SI01",coursecoordinator_id:2, knowledgearea: "Tecnologia da Informação", headquarterscampus: "Praia Vermelha",  name:"Sistema da Informação")
Course.create(code:"BIO01",coursecoordinator_id:3, knowledgearea: "Ciencias da Natureza", headquarterscampus: "Praia Vermelha",  name:"Ciencias biologicas")

Subjectoferred.create(subject_id:1, course_id:2)
Subjectoferred.create(subject_id:1, course_id:3)
Subjectoferred.create(subject_id:2, course_id:1)
Subjectoferred.create(subject_id:2, course_id:3)

Prerequisite.create(subject_id: 2, prerequisitecode:1)
Prerequisite.create(subject_id: 1, prerequisitecode:3)
Prerequisite.create(subject_id: 1, prerequisitecode:4)
Prerequisite.create(subject_id: 2, prerequisitecode:3)

Schoolclass.create(calendar: "seg terça", classroom:"Sala 304",name: "A1", subject_id:1, teacher_id:1)
Schoolclass.create(calendar: "quinta domingo", classroom:"Sala 204",name: "J1", subject_id:2, teacher_id:2)

Subjectstudied.create(student_id: 1,subject_id:1)
Subjectstudied.create(student_id: 1,subject_id:2)
Subjectstudied.create(student_id: 1,subject_id:3)
Subjectstudied.create(student_id: 2,subject_id:3)
Subjectstudied.create(student_id: 2,subject_id:1)


Student.create(user_id: 11, course_id:1 )
Student.create(user_id: 12, course_id:2 )










