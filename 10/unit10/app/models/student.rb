class Student < ActiveRecord::Base
  has_one(:meal_card, :class_name => "MealCard", :foreign_key => "student_id")
end
