class Departmentcoordinator < ApplicationRecord
  belongs_to :user
  has_one :department
end
