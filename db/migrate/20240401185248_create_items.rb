class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :product, null: false, foreign_key: true
      t.date :expiry_date
      t.date :open_date
      t.integer :quantity

      t.timestamps
    end
  end
end
