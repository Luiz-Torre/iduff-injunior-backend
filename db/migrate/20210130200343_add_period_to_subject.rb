class AddPeriodToSubject < ActiveRecord::Migration[5.2]
  def change
    add_column :subjects, :period, :integer
  end
end
