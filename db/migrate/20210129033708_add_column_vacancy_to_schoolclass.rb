class AddColumnVacancyToSchoolclass < ActiveRecord::Migration[5.2]
  def change
    add_column :schoolclasses, :vacancy, :integer
  end
end
