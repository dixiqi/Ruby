class CreateFriendLinks < ActiveRecord::Migration
  def self.up
    create_table :friend_links do |t|
      t.int :id
      t.varchar(50) :title
      t.varchar(200) :url
      t.int :taxis
      t.varchar(2) :isShow

      t.timestamps
    end
  end

  def self.down
    drop_table :friend_links
  end
end
