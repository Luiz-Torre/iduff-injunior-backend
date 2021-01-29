class AddReferencesToSubject < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :schoolyear, foreign_key: true
  end
end
