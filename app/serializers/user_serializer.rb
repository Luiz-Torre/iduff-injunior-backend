class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :nationality, :state, :RG, :birthdate, :email, :role, :cpf, :password_digest
end
