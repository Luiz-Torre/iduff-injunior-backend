class CreateSchoolyears < ActiveRecord::Migration[5.2]
  def change
    create_table :schoolyears do |t|
      t.string :status
      t.string :year
      t.string :half

      t.timestamps
    end
  end
end
