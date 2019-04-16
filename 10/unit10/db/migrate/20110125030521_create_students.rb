class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.int :id
      t.varchar(20) :name
      t.varchar(30) :klass
      t.varchar(20) :number
      t.int :age
      t.varchar(2) :sex
      t.varchar(200) :home_address
      t.varchar(15) :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
