class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.decimal :sum
      t.datetime :date
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
