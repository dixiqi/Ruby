class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.int :id
      t.varchar(45) :name
      t.varchar(45) :sex
      t.text :jianli
      t.varchar(45) :yihun
      t.text :aihao

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
