class CreateWallets < ActiveRecord::Migration[8.0]
  def change
    create_table :wallets do |t|
      t.references :entity, polymorphic: true, null: false
      t.decimal :balance, precision: 15, scale: 2, default: 0, null: false

      t.timestamps
    end
  end
end
