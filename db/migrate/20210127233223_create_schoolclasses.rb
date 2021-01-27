class CreateSchoolclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :schoolclasses do |t|
      t.string :calendar
      t.string :classroom
      t.integer :numberofstudents
      t.string :name
      t.references :subject, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
