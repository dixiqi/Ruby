#encoding:utf-8

class AjaxesController < ApplicationController
  # GET /ajaxes
  # GET /ajaxes.xml
  def index
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ajaxes }
    end
  end

  def find
    key = request["key"]

    if(key == "SQL2008")
      @msg = "SQLServer2008完全学习手册  <br>作者：郭郑州  <br>出版社：清化大学出版社<br>http://school.itzcn.com/bookshow-bookid-87.html"
    else
      @msg = key
    end

    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end

  def search
    
    respond_to do |format|
      format.html 
      format.xml  { render :xml => @ajaxes }
    end
  end

  def login
    username=request["user"]["name"]
    password=request["user"]["password"]

    @username = username
    @rule = "VIP用户"

    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end

  def itzcn

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ajaxes }
    end
  end
  
  def res
    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end

  # GET /ajaxes/1
  # GET /ajaxes/1.xml
  def show
    @ajaxis = Ajax.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ajaxis }
    end
  end

  # GET /ajaxes/new
  # GET /ajaxes/new.xml
  def new
    @ajaxis = Ajax.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ajaxis }
    end
  end

  # GET /ajaxes/1/edit
  def edit
    @ajaxis = Ajax.find(params[:id])
  end

  # POST /ajaxes
  # POST /ajaxes.xml
  def create
    @ajaxis = Ajax.new(params[:ajaxis])

    respond_to do |format|
      if @ajaxis.save
        format.html { redirect_to(@ajaxis, :notice => 'Ajax was successfully created.') }
        format.xml  { render :xml => @ajaxis, :status => :created, :location => @ajaxis }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ajaxis.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ajaxes/1
  # PUT /ajaxes/1.xml
  def update
    @ajaxis = Ajax.find(params[:id])

    respond_to do |format|
      if @ajaxis.update_attributes(params[:ajaxis])
        format.html { redirect_to(@ajaxis, :notice => 'Ajax was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ajaxis.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /ajaxes/1
  # DELETE /ajaxes/1.xml
  def destroy
    @ajaxis = Ajax.find(params[:id])
    @ajaxis.destroy

    respond_to do |format|
      format.html { redirect_to(ajaxes_url) }
      format.xml  { head :ok }
    end
  end

  def online_user
    users_list = [
        ["haohua", "ybiao", "peter", "zhht", "joker", "小段", "zhhh"],
        ["haohua", "ybiao", "kenuo", "lilei", "bulusi", "joker", "小段"]
    ]
    num = session[:onl].to_i
    @list = users_list[num]
    session[:onl] = num + 1

    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end

  def bbs

    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end
  
  def user_list
    user = Array.new
    user << { :LoginName => "admin", :Password => "123456", :UserName => "杰克孙" }
    user << { :LoginName => "joker", :Password => "666666", :UserName => "张凤清" }
    user << { :LoginName => "lixing", :Password => "lixing", :UserName => "李星" }
    user << { :LoginName => "qz", :Password => "zqz", :UserName => "张清朕" }
    user << { :LoginName => "peter", :Password => "zhao", :UserName => "赵铎" }
    user << { :LoginName => "hua", :Password => "zhh", :UserName => "张浩华" }
    user << { :LoginName => "zhht", :Password => "hongtao", :UserName => "祝红涛" }
    user << { :LoginName => "jeck", :Password => ".369", :UserName => "刘清" }
    user << { :LoginName => "lovefeng", :Password => "123", :UserName => "马凤" }

    op = request[:op] #当前请求操作
    page = session[:page].to_i  #当前页码
    count = user.size #统计记录总条数

    if op == "next" and page < ((count - 1) / 5)
      page += 1
    end
    
    if op == "prev" and page > 0
      page -= 1
    end

    startNum = page * 5
    endNum = startNum + 5
    @users = user[startNum, endNum]
    @sn = startNum
    @en = endNum
    
    session[:page] = page
    
    respond_to do |format|
      format.html  { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end

  def users
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end

  def messages
    msgs = []
    msgs << "<div><span class=name>ITZCN</span>&nbsp;&nbsp;<span class=time>12：25：02</span></div><div class=msg>Hello !</div>"
    msgs << "<div><span class=name>访客1</span>&nbsp;&nbsp;<span class=time>12：25：32</span></div><div class=msg>Hello ,ITZCN<br>Good morning!</div>"
    msgs << "<div><span class=name>ITZCN</span>&nbsp;&nbsp;<span class=time>12：26：13</span></div><div class=msg>Good morning!</div>"
    msgs << "<div><span class=name>访客1</span>&nbsp;&nbsp;<span class=time>12：27：02</span></div><div class=msg>我想问一个问题，</div>"

    length = session[:num].to_i
    @messages = msgs[0, length]
    session[:num] = length + 1

    respond_to do |format|
      format.html { render :layout => false }
      format.xml  { render :xml => @ajaxes }
    end
  end

  def chat
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end

  def source
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end
  
  def now
    respond_to do |format|
      format.html { render :layout => false } #:layout => false 设置不使用页面框架
      format.xml  { render :xml => @ajaxes }
    end
  end

  def time
    respond_to do |format|
      format.html
      format.xml  { render :xml => @ajaxes }
    end
  end
end
