class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :knowledgearea
      t.string :headquarterscampus
      t.references :departmentcoordinator, foreign_key: true

      t.timestamps
    end
  end
end
