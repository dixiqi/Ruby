class CreateMealCards < ActiveRecord::Migration
  def self.up
    create_table :meal_cards do |t|
      t.int :id
      t.varchar(20) :number
      t.int :student_id
      t.float :sicherheit
      t.float :balance

      t.timestamps
    end
  end

  def self.down
    drop_table :meal_cards
  end
end
