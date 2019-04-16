class BooksController < ApplicationController
  #before_filter :safecheck,:except=>[ :login ,:prologin]
  def safecheck
    if !session[:user_name].nil? then
      @currentUserName=session[:user_name]
      return true;
    end
  else
    redirect_to "/books/login", :notice =>'对不起，你还没有登录。'
    return false
  end
    
  def aboutus
    redirect_to "http://www.itzcn.com"
  end

  # GET /books
  # GET /books.xml
  def index
    reset_session
    @books = Book.all
     render :action=>"index", :layout=>"default"
  end

  # GET /books/1
  # GET /books/1.xml
  def show
    @book = Book.find(params[:id])
    render :action=>"show", :layout=>"default"
  end

  # GET /books/new
  # GET /books/new.xml
  def new
    @book = Book.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book }
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.xml
  def create
    @book = Book.new(params[:book])

    respond_to do |format|
      if @book.save
        format.html { redirect_to(@book, :notice => 'Book was successfully created.') }
        format.xml  { render :xml => @book, :status => :created, :location => @book }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end



  # PUT /books/1
  # PUT /books/1.xml
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to(@book, :notice => 'Book was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.xml
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to(books_url) }
      format.xml  { head :ok }
    end
  end

  def list
    @books = Book.all
     render :file=>"books/cart",:layout=>"default"
  end

  #进入登录页面
  def login
    render :layout=>true
  end
  #登录验证
  def prologin
    uname=params[:user][:name]
    upass=params[:user][:pass]
    
    if (uname=="admin")&&(upass=="admin")    then
      session[:user_name]=uname
      session[:user_pass]=upass
      redirect_to "/books/list", :notice => '欢迎回来，当前用户:'+session[:user_name]+'，现在时间是：'+Time.now.strftime("%Y-%m-%d %H:%M:%S")+'。'
      else
        redirect_to "/books/login", :notice => '您的输入有误，登录失败。'
    end
    
  end
  
end
