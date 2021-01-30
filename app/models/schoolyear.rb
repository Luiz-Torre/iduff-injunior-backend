class Schoolyear < ApplicationRecord

    validates :status, presence: :true
    enum status: {planning: 0,  registrations:1, progress:2, concluded: 3}
    after_validation :check_year
  
    def check_year
      verifystatus = defined?(Schoolyear.status)
      if verifystatus == nil
        Schoolyear.create(year: (Time.now.year).to_s , half: "1", status: 0 )
      
      else
        if Schoolyear.find(1).present?
          errors.add :already_exist, "Periodo existente, para mudanças atualize ele"
        end
      end
      
     
    end
end


