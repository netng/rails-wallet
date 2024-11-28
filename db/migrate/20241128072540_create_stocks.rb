class CreateStocks < ActiveRecord::Migration[8.0]
  def change
    create_table :stocks do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end

    add_index :stocks, [:name], unique: true
  end
end
