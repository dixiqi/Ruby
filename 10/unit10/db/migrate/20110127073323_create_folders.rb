class CreateFolders < ActiveRecord::Migration
  def self.up
    create_table :folders do |t|
      t.int :id
      t.varchar(50) :name
      t.int :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :folders
  end
end
