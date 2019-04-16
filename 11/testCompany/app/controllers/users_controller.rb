#encoding:utf-8
class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all
    render :action=>"list"
    
   # respond_to do |format|
   #   format.html # index.html.erb
   #   format.xml  { render :xml => @users }
   # end
  end
  
  def search
	  @user = User.new(:id=>params[:id].to_i, :name=>params[:name], :department=>params[:dept] , :phone=>"010-00000000" )
	  @user.id=params[:id].to_i
	  render :file=>"users/show"
  end
  
  def inline
    @users = User.all
    render :inline=>"<h3>查看所有用户</h3><ol><% @users.each do |user| %><li><%=h '用户名：' + user.name %>  &nbsp;&nbsp;&nbsp;[<%= user.department %>部门] </li><%= user.phone %>  <% end %></ol>"    
  end

  def text
	  @user=User.find(1)
	  render :text=>"<h3>查看所有用户</h3><ol><li>用户名：<%= @user.name %></li>  <li>部门：<%= @user.department %></li> <li>电话：<%= @user.phone %></li></ol>"
  end

 def file
	     @users = User.all
    render :file=>"/users/index",:layout=>false

 end
 
  def itzcn
    redirect_to "http://www.itzcn.com"				#使用redirect_to方法重定向到窗内网
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])
    render :partial=>"showuser"    
#    respond_to do |format|
#      format.html # show.html.erb
#     format.xml  { render :xml => @user }
#    end
  end

 

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

=begin
  # POST /users
  # POST /users.xml
#  def create
#    @user = User.new(params[:user])
#
 #   respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
=end

  def create
    @user = User.new(params[:user])
      if @user.save
        redirect_to  "/users/index/list"
      else
         render :action => "new" 
      end
  end
  
  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
