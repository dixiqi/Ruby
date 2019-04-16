class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.int :id
      t.varchar(45) :name
      t.datetime :starttime
      t.datetime :endtime
      t.int :state
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
