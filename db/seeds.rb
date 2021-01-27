# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Luiz", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"diretor@id.uff.br", role:4, CPF:"000.000.000-00", password:"123123", password_confirmation:"123123")
User.create(name: "Luiz", nationality: "BR", state: "Rio de Janeiro", RG: "111.111-111", birthdate:"01/01/0001", email:"cordenadordepartamento@id.uff.br", role:3, CPF:"001.000.000-00", password:"123123", password_confirmation:"123123")