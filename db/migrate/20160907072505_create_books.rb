class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :department
      t.integer :year
      t.timestamps null: false
    end
  end
end
