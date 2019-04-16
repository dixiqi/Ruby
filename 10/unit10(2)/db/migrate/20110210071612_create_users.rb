class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.int :id
      t.varchar(20) :name
      t.int :year
      t.varchar(2) :sex
      t.varchar(50) :address
      t.varchar(12) :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
