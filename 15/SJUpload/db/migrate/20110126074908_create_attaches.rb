class CreateAttaches < ActiveRecord::Migration
  def self.up
    create_table :attaches do |t|
           t.column :id, :integer # 更新时间
           t.column :name,        :string # 附件名称
           t.column :url,         :string # 资源路径
           t.column :types,       :string # 附件类型，存扩展名
           t.column :size,        :integer # 附件大小
           t.column :last_update, :string # 更新时间
           t.timestamps
    end
  end

  def self.down
    drop_table :attaches
  end
end
