class Subject < ApplicationRecord
    has_many :grades
    has_many :licenses
    has_many :prerequisites
    has_one :schoolclass
    has_many :subjectoferreds
    belongs_to :department
    has_many :subjectstudieds

    validates :knowledgearea, :workload ,presence: true
    validates :name, presence: true, uniqueness: true


    

end
