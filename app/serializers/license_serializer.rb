class LicenseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :teacher
  has_one :subject
end
