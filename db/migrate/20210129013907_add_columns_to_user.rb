class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :street, :string
    add_column :users, :number, :integer
    add_column :users, :district, :string
    add_column :users, :complement, :string
    add_column :users, :cep, :string
    add_column :users, :telephone, :string
    add_column :users, :cellphone, :string
  end
end
