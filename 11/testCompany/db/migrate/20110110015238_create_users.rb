class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.int :id
      t.varchar(45) :name
      t.varchar(45) :department
      t.varchar(45) :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
