class AddReferenceToSubject < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :prequisite, foreign_key: true
  end
end
