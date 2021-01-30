class Schoolyear < ApplicationRecord

    validates :status, presence: :true
    enum status: {planning: 0,  registrations:1, progress:2, concluded: 3}
    after_validation :check_year, on: [:create]
  
    def check_year
      unless Schoolyear.first.blank? 
        errors.add :already_exist, "Periodo existente, para mudanças atualize ele"
      end
    end
end

    

