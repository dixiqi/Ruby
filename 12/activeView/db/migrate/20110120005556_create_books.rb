class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.int :id
      t.varchar(45) :name
      t.text :content
      t.integer :price
      t.integer :count

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
