class ChangeEtatTypeInContact < ActiveRecord::Migration[7.0]
  def change
    change_column :contacts, :etat, :string
  end
end
