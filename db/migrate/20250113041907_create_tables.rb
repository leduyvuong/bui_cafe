class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.string :name, null: false
      t.integer :capacity, null: false
      t.integer :status, default: 0 # Giả sử enum 'available', 'occupied', 'reserved'
      t.timestamps
    end
  end
end
