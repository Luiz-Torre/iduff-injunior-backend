class CreateSubjectoferreds < ActiveRecord::Migration[5.2]
  def change
    create_table :subjectoferreds do |t|
      t.references :subject, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
