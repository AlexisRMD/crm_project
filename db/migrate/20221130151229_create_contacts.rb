class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.integer :type
      t.integer :etat

      t.timestamps
    end
  end
end
