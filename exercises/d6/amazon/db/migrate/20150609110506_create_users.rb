class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :name
      t.string :billing
      t.string :address
      t.string :shipping
      t.string :address
      t.string :credit
      t.string :card
      t.string :number

      t.timestamps null: false
    end
  end
end
