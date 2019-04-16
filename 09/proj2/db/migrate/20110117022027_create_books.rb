class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.int :id
      t.varchar(50) :name
      t.varchar(20) :author
      t.varchar(20) :ISBN
      t.int :price
      t.varchar(50) :publisher

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
