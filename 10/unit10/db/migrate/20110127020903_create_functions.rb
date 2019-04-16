class CreateFunctions < ActiveRecord::Migration
  def self.up
    create_table :functions do |t|
      t.int :id
      t.varchar(20) :name
      t.varchar(10) :number

      t.timestamps
    end
  end

  def self.down
    drop_table :functions
  end
end
