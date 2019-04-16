class Folder < ActiveRecord::Base
  belongs_to(:parent,
             :class_name=>"Folder",
             :foreign_key=>"parent_id")
  has_many(:childs,
           :class_name=>"Folder",
           :foreign_key=>"parent_id")
end
