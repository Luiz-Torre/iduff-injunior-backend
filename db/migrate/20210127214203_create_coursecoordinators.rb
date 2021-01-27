class CreateCoursecoordinators < ActiveRecord::Migration[5.2]
  def change
    create_table :coursecoordinators do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
