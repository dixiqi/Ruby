class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.int :id
      t.varchar(20) :name

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end