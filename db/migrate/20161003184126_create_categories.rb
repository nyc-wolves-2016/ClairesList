class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
