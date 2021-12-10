class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.decimal :price
      t.integer :quantity
      t.integer :weight
      t.references :product, null: false, foreign_key: true
      t.references :receipt, null: false, foreign_key: true
      t.references :weight_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
