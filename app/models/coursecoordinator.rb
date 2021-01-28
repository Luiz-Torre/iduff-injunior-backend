class Coursecoordinator < ApplicationRecord
  belongs_to :user
  has_one :course
end
