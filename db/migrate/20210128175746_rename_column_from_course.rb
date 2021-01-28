class RenameColumnFromCourse < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :numerofstudent, :numberofstudent

  end
end
