class AddReferencesToSchoolclasses < ActiveRecord::Migration[5.2]
  def change
    add_reference :schoolclasses, :schoolyear, foreign_key: true
  end
end
