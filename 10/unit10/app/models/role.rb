class Role < ActiveRecord::Base
  has_and_belongs_to_many(:functions,:class_name=>"Function",:join_table=>"functions_roles")
end
