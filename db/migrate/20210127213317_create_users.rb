class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nationality
      t.string :state
      t.string :RG
      t.date :birthdate
      t.string :email
      t.integer :role
      t.string :cpf
      t.string :password_digest

      t.timestamps
    end
  end
end
