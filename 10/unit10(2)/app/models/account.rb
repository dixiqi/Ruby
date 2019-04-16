#encoding:utf-8

class Account < ActiveRecord::Base
  validates_presence_of(:name, :password, :message => "不能为空！")
  validates_length_of(:name, :password, :within => 6..50, :message => "长度不合法")
  validates_format_of(:name, :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/, :message => "格式错误！")
end
