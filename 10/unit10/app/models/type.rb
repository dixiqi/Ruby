class Type < ActiveRecord::Base
  has_many(:products,:class_name=>"Product", :foreign_key=>"type_id")
end
