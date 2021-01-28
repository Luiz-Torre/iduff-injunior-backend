class Subject < ApplicationRecord
    has_many :courses
    has_many :grades
    has_many :licenses
    has_many :prerequisites
    has_one :schoolclass
    has_many :subjectstudieds



end
