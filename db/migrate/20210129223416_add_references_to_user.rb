class AddReferencesToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :schoolyear, foreign_key: true
  end
end
