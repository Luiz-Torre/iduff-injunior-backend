class CreatePrerequisites < ActiveRecord::Migration[5.2]
  def change
    create_table :prerequisites do |t|
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
