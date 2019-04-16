class CartController < ApplicationController
  #require "verification"


  def error
      render :text=>'<h2>很抱歉，您要访问的页面不存在。</h2> <p><img src="/imgs/404.gif"> 您的访问出错了，时间： '+Time.now.strftime("%Y-%m-%d %H:%M:%S")+'。
 <br /><br/>单击这里<a href="/">返回首页</a>。
    </p>
',:layout=>true
  end
  
  def index
    @books = Book.all
     render :file=>"/books/cart",:layout=>true
  end


  def first
    @book=Book.find(1)
    redirect_to  "/books/1", :notice => '欢迎您查看购物车中物品的详情，祝你购物愉快。'
  end

  def checkout
#  verify :params => "post",:only=> :checkout ,
#          :session=> :user_id ,
#          :add_flash=>{ :notice=> "对不起，你还没有登录。" } ,
#          :redirect_to => :index
  end

end
