class CreateDurgs < ActiveRecord::Migration
  def self.up
    create_table :durgs do |t|
      t.int :id
      t.varchar(50) :name
      t.varchar(20) :standard
      t.varchar(20) :unit
      t.int :number
      t.int :price
      t.datetime :expiration

      t.timestamps
    end
  end

  def self.down
    drop_table :durgs
  end
end
