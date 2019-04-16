class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.int :id
      t.varchar(50) :name
      t.varchar(50) :password

      t.timestamps
    end
  end

  def self.down
    drop_table :accounts
  end
end
