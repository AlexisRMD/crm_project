class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :contacts, :type, :type_name
  end
end
