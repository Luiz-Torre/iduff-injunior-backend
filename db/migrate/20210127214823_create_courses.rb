class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :numerofstudent , default: 0
      t.references :coursecoordinator, foreign_key: true
      t.string :knowledgearea
      t.string :headquarterscampus
      t.string :name

      t.timestamps
    end
  end
end
