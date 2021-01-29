class AddReferenceToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_reference :teachers, :department, foreign_key: true
  end
end
