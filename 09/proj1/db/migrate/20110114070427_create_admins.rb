class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.int :id
      t.varchar(20) :login_name
      t.varchar(20) :password
      t.varchar(20) :username
      t.varchar(10) :role
      t.datetime :last_login_time
      t.int :login_count
      t.int :state

      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
