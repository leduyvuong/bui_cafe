class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity, null: false
      t.text :note
      t.decimal :price, precision: 10, scale: 2, null: false
      t.timestamps
    end
  end
end
