class RemoveColumnFromCourse < ActiveRecord::Migration[5.2]
  def change
    remove_reference :courses, :subject, foreign_key: true
  end
end
