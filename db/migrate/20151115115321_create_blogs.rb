class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :user
      t.text :title
      t.text :content
      t.string :tags
      t.integer :likes
      t.string :category
      t.string :image
      t.boolean :status

      t.timestamps null: false
    end
  end
end
