class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.int :id
      t.varchar(50) :name

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
