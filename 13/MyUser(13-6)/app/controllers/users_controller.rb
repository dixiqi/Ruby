class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    users = User.all
    cookies[:users]={ :value=>users,:expires=> Time.now+3600 }
     @users = cookies[:users]
    flash[:notice]="喂，你好吗？我是使用flash传的值"
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    userId=params[:id]
    users=cookies[:users]
    user=User.find(userId)
    users << "#{userId}" unless users.include?(userId)
    cookies[:user]={:value=>user,:expires=> Time.now+3600}
    @user=cookies[:user]
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
        render :text=>"我是使用render :text来传值的"
    @user = User.find(params[:id])

  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
   redirect_to "/users/index",:notice => '我是使用redirect_to转向页面然后进行传值的。'
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
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


  def login
     uname=params[:user][:name]
     upass=params[:user][:pass]
     user=User.find_by_name_and_pass(uname,upass)
     cookies[:user_id]=nil     
     if user
       cookies[:user_id]=user.id
       cookies[:user1]={:value=>user,:expires => Time.now }
       redirect_to "/users/index",:notice => 'success'
     else
       redirect_to "/users/dealfail",:notice => 'fail'
     end    
  end

        def deal
          @user=User.find(cookies[:user_id1])
        end
        def dealfail
        end
  # GET /users/login1
        def login1
          end
end

