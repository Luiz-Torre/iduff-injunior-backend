class Schoolyear < ApplicationRecord

    validates :status, presence: :true
    enum status: {planning: 0,  registrations:1, progress:2, concluded: 3}
    # after_validation :check_year
  
    # def check_year
    #   if Schoolyear.first.blank?
    #     isso = Schoolyear.new(year: (Time.now.year).to_s, half: "1", status: 0)    
    #     isso.save        
    #     else
    #       Schoolyear.find(1).present?
    #       errors.add :already_exist, "Periodo existente, para mudanças atualize ele"
    #     end
    # end

    
end


