class ChangeEtatNameInContact < ActiveRecord::Migration[7.0]
  def change
    rename_column :contacts, :etat, :status
  end
end
