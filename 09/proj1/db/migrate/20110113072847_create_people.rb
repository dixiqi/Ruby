class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.int :id
      t.varchar(20) :name
      t.int :age
      t.varchar(2) :sex

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
