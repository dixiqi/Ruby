class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.int :id
      t.varchar(50) :name
      t.varchar(50) :url
      t.int :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
