class ChangeColumnFromSchoolyear < ActiveRecord::Migration[5.2]
  def change
    change_column :schoolyears, :status, :integer
    change_column :schoolyears, :year, :integer
    change_column :schoolyears, :half, :integer

  end
end
