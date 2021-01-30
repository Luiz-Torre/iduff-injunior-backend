class SchoolyearSerializer < ActiveModel::Serializer
  attributes :PeriodoAtual, :status

  def PeriodoAtual
    self.object.year + "/" + self.object.half 
  end

end
