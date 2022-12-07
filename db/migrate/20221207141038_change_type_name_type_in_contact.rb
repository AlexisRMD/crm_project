class ChangeTypeNameTypeInContact < ActiveRecord::Migration[7.0]
  def change
    change_column :contacts, :type_name, :string
  end
end
