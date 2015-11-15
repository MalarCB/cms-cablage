class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.string :email
      t.string :url
      t.text :message
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
