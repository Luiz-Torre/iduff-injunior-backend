class Subjectoferred < ApplicationRecord
  belongs_to :subject
  belongs_to :course

  validates :subject, :course ,presence: true
end
