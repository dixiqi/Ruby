class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.int :id
      t.varchar(45) :name
      t.datetime :ctime

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
