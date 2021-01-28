class AddPrerequisitecodeToPrerequisite < ActiveRecord::Migration[5.2]
  def change
    add_column :prerequisites, :prerequisitecode, :integer
  end
end
