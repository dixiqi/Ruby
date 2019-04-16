class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.int :id
      t.varchar(10) :name
      t.varchar(20) :number
      t.int :money

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
