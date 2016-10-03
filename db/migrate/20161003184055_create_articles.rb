class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.decimal :price, null: false
      t.string :key, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
