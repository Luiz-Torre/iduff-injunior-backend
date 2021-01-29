class UserSerializer < ActiveModel::Serializer
  attributes :id, :name,:street,:number,:district,:complement,:cep,:telephone,:cellphone,:nationality, :state, :RG, :birthdate, :email, :role, :cpf
end
