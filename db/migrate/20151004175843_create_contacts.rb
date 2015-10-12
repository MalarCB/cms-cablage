class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.text :comments
      t.string :adress
      t.string :city
      t.string :state
      t.string :country
      t.string :ip_address
      t.boolean :status
      t.boolean :is_internal

      t.timestamps null: false
    end
  end
end
