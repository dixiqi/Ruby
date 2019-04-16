class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.int :id
      t.varchar(20) :name
      t.int :type_id
      t.float :price
      t.varchar(20) :model

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
