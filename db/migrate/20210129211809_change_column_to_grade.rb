class ChangeColumnToGrade < ActiveRecord::Migration[5.2]
  def change
    change_column :grades, :gradeone, :integer, default: 0
    change_column :grades, :gradetwo, :integer, default: 0

  end
end
