class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.string :description
      t.decimal :balance_after_transaction, precision: 10, scale: 2

      t.integer :account_id

      t.timestamps
    end
  end
end
