class Menu < ActiveRecord::Base
  belongs_to(:parent,
             :class_name=>"Menu",
             :foreign_key=>"parent_id")
  has_many(:childs,
           :class_name=>"Menu",
           :foreign_key=>"parent_id")
end
