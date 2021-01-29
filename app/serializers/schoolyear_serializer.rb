class SchoolyearSerializer < ActiveModel::Serializer
  attributes :PeriodoAtual, :status

  def PeriodoAtual
    self.object.year.to_s + "/" + self.object.half.to_s  
  end

end
