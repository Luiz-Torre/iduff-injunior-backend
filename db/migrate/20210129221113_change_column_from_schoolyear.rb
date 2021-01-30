class ChangeColumnFromSchoolyear < ActiveRecord::Migration[5.2]
  def change
    change_column :schoolyears, :status, :integer, default: 0

  end
end
