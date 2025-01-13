class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.references :product, foreign_key: true, null: false
      t.text :url, null: false
      t.boolean :is_primary, default: false
      t.timestamps
    end
  end
end
