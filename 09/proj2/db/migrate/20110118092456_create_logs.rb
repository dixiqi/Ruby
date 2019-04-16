class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.int :id
      t.datetime :record_time
      t.varchar(200) :log

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
