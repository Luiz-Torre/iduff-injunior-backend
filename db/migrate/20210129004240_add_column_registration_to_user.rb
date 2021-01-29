class AddColumnRegistrationToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :registration, :string
  end
end
