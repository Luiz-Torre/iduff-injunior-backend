# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Schoolyear.create(year: "2021", half: "1", status: 0)

User.create(name: "Luiz Diretor", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "00.111.111-2", birthdate:"20/05/1230", email: "diretor@id.uff.br", cpf: "000.000.000-00", role: 4, registration:"0001112202", password:"admin", password_confirmation:"admin")
User.create(name: "Coordenaor de Departamento", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "01.111.111-2", birthdate:"20/05/1230", email: "cordepar1@id.uff.br", cpf: "001.000.000-00", role: 3, registration:"000111222", password:"seed", password_confirmation:"seed")
User.create(name: "Coordenaor dre Departamento 2 ", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "02.111.111-2", birthdate:"20/05/1230", email: "corddepar2@id.uff.br", cpf: "002.000.000-00", role: 3, registration:"000111223", password:"seed", password_confirmation:"seed")
User.create(name: "Coordenaor de Departamento 3 ", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "03.111.111-2", birthdate:"20/05/1230", email: "corddepar3@id.uff.br", cpf: "003.000.000-00", role: 3, registration:"000111224", password:"seed", password_confirmation:"seed")
User.create(name: "Coordenaor de Curso ", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "04.111.111-2", birthdate:"20/05/1230", email: "cordepar1@id.uff.br", cpf: "004.000.000-00", role: 2, registration:"00011125", password:"seed", password_confirmation:"seed")
User.create(name: "Coordenaor de Curso 2", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "05.111.111-2", birthdate:"20/05/1230", email: "cordepar2@id.uff.br", cpf: "005.000.000-00", role: 2, registration:"000111226", password:"seed", password_confirmation:"seed")
User.create(name: "Coordenaor de Curso 3", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "06.111.111-2", birthdate:"20/05/1230", email: "cordepar3@id.uff.br", cpf: "006.000.000-00", role: 2, registration:"000111227", password:"seed", password_confirmation:"seed")
User.create(name: "Professor 1", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "10-011.111-2", birthdate:"20/05/1230", email: "professor@id.uff.br", cpf: "007.000.000-00", role: 1, registration:"000111228", password:"seed", password_confirmation:"seed")
User.create(name: "Professor 2", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "07.111.111-2", birthdate:"20/05/1230", email: "professor2@id.uff.br", cpf: "008.000.000-00", role: 1, registration:"000111229", password:"seed", password_confirmation:"seed")
User.create(name: "Aluno 1", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "08.111-111.2", birthdate:"20/05/1230", email: "aluno@id.uff.br", cpf: "009.000.000-00", role: 0, registration:"000111210", password:"seed", password_confirmation:"seed")
User.create(name: "Aluno 2", nationality: "Brasileiro", state: "Rio de Janeiro", RG: "09.111-111.2", birthdate:"20/05/1230", email: "aluno2@id.uff.br", cpf: "010.000.000-00", role: 0, registration:"000111211", password:"seed", password_confirmation:"seed")


Department.create(name: "TCC", knowledgearea: "Tecnologia", headquarterscampus: "Praia Vermelha", departmentcoordinator_id: 1)
Department.create(name: "GMA", knowledgearea: "Matematica", headquarterscampus: "Valonguinho", departmentcoordinator_id: 2)
Department.create(name: "Biologicas", knowledgearea: "Ciencias Biologicas", headquarterscampus: "Gragoata", departmentcoordinator_id: 3)

Subject.create(name: "Calculo 1", knowledgearea: "Matematica", workload: "60 horas",period: 1, department_id: 2)
Subject.create(name: "Fundamento de Protistas", knowledgearea: "Biologia", workload: "60 horas",period: 2, department_id: 3)
Subject.create(name: "Programação Estruturada", knowledgearea: "Tecnologia", workload: "60 horas",period: 3, department_id: 1)
Subject.create(name: "Programação Listada em algoritmo espacial", knowledgearea: "Tecnologia", workload: "60 horas",period: 1, department_id: 1)


License.create(teacher_id: 1, subject_id:3)
License.create(teacher_id: 1, subject_id:2)
License.create(teacher_id: 2, subject_id:1)
License.create(teacher_id: 2, subject_id:3)

Prerequisite.create(subject_id: 1, prerequisitecode:2)
Prerequisite.create(subject_id: 1, prerequisitecode:3)
Prerequisite.create(subject_id: 2, prerequisitecode:4)
Prerequisite.create(subject_id: 2, prerequisitecode:3)

Course.create(code:"TCC01",coursecoordinator_id:1, knowledgearea: "Tecnologia da Informação", headquarterscampus: "Praia Vermelha",  name:"Ciencias da Computação")
Course.create(code:"SI01",coursecoordinator_id:2, knowledgearea: "Tecnologia da Informação", headquarterscampus: "Praia Vermelha",  name:"Sistema da Informação")
Course.create(code:"BIO01",coursecoordinator_id:3, knowledgearea: "Ciencias da Natureza", headquarterscampus: "Praia Vermelha",  name:"Ciencias biologicas")

Subjectoferred.create(subject_id:1, course_id:2)
Subjectoferred.create(subject_id:1, course_id:3)
Subjectoferred.create(subject_id:2, course_id:1)
Subjectoferred.create(subject_id:2, course_id:3)



Schoolclass.create(calendar: "seg terça", classroom:"Sala 304",name: "A1", subject_id:1, teacher_id:1)
Schoolclass.create(calendar: "quinta domingo", classroom:"Sala 204",name: "J1", subject_id:2, teacher_id:2)

Subjectstudied.create(student_id: 1,subject_id:1)
Subjectstudied.create(student_id: 1,subject_id:2)
Subjectstudied.create(student_id: 1,subject_id:3)
Subjectstudied.create(student_id: 2,subject_id:3)
Subjectstudied.create(student_id: 2,subject_id:1)


Student.create(user_id: 10, course_id:1 )
Student.create(user_id: 11, course_id:2 )










