class ChangeColumnFromSchoolyear < ActiveRecord::Migration[5.2]
  def change
    change_column :schoolyears, :status, :integer, default: 0
    change_column :schoolyears, :year, :integer, default: 0
    change_column :schoolyears, :half, :integer, default: 1

  end
end
