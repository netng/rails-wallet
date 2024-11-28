class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.references :source_wallet, null: true, foreign_key: { to_table: :wallets }
      t.references :target_wallet, null: true, foreign_key: { to_table: :wallets }
      t.decimal :amount, precision: 15, scale: 2, null: false
      t.string :transaction_type, null: false

      t.timestamps
    end
  end
end
