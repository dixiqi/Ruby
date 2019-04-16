
class User < ActiveRecord::Base
  has_one(:vip, :class_name => "Vip", :foreign_key => "user_id")
  has_many(:login_logs, :class_name => "LoginLog", :foreign_key => "login_name")
end

