class BlogController < ApplicationController
  verify :only=> :post_comment,
          :session=> :user_id,
          :add_flash=>{ :notice=> "对不起，你还没有登录。" },
          :redirect_to => :login
  #这里是BlogController的其他内容

end