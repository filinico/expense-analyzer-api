class CreateWeightTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :weight_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
