class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customername
      t.string :contactname
      t.string :address
      t.string :city
      t.string :postalcode
      t.string :country

      t.timestamps null: false
    end
  end
end
