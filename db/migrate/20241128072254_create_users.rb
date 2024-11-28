class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 100, null: false
      t.string :email, limit: 100, null: false

      t.timestamps
    end

    add_index :users, [:email], unique: true
  end
end
