class ChangeColumnNumberofstudentsToSchoolclass < ActiveRecord::Migration[5.2]
  def change
    change_column :schoolclasses, :numberofstudents, :integer, default: 0

  end
end
