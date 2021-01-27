class CreateDepartmentCoordinators < ActiveRecord::Migration[5.2]
  def change
    create_table :department_coordinators do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
