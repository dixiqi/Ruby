class CreateCarts < ActiveRecord::Migration
  def self.up
    create_table :carts do |t|
      t.int :id
      t.varchar(50) :name
      t.varchar(200) :details
      t.varchar(50) :img
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :carts
  end
end
