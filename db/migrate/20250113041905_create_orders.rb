class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 10, scale: 2, null: false
      t.integer :status, default: 0 # Giả sử enum 'pending', 'completed', 'canceled'
      t.timestamps
    end
  end
end
