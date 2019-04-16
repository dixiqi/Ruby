class CreateAjaxes < ActiveRecord::Migration
  def self.up
    create_table :ajaxes do |t|
      t.int :id
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :ajaxes
  end
end
