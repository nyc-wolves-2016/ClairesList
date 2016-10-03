class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.decimal :price, null: false
      t.string :key
      t.references :user
      t.references :category

      t.timestamps
    end
  end
end
