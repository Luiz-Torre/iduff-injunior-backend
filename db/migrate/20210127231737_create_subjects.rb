class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :knowledgearea
      t.string :workload
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
