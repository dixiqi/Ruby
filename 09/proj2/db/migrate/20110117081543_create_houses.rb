class CreateHouses < ActiveRecord::Migration
  def self.up
    create_table :houses do |t|
      t.int :id
      t.varchar(20) :location
      t.varchar(20) :subdistrict
      t.varchar(20) :housing_type
      t.int :acreage
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :houses
  end
end
