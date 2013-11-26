class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.string :address

      t.timestamps
    end
  end
end
