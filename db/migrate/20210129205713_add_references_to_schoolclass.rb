class AddReferencesToSchoolclass < ActiveRecord::Migration[5.2]
  def change
    add_reference :schoolclasses, :grade, foreign_key: true
  end
end
