class CartsController < ApplicationController
  # GET /carts
  # GET /carts.xml
  def index
    $application += 1    
    @carts=Cart.all
     cookies[:name] = "kitty"
     @pname= cookies[:name]
     cookies[:age] = 20
     @pclass= cookies[:age].class
#    cookies[:carts]={ :value=>carts,:expires=> Time.now+3600 }
#    @carts = cookies[:carts]
#    readCookie
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @carts }
    end
  end



  def details

  end

  # GET /carts/1
  # GET /carts/1.xml
  def show
   # @cart = Cart.find(params[:id])
    cartId=params[:id]
    carts=cookies[:carts]
    cart=Cart.find(cartId)
    carts << "#{cartId}" unless carts.include?(cartId)
    cookies[:cart]={:value=>cart,:expires=> Time.now+3600}
    @cart=Cart.find(cookies[:cart])
    
=begin
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cart }
    end
=end
  end

#desc "Clear expired sessions"
#task :clear_expired_sessions => :environment do
#    sql = 'DELETE FROM sessions WHERE updated_at < DATE_SUB(NOW(), INTERVAL 1 DAY);'
#    ActiveRecord::Base.connection.execute(sql)
#end  

  def showDetails
     cartId=params[:id]
     cookies[:cartId]=cartId
    carts=cookies[:carts]
    cart=Cart.find(cookies[:cartId])
    cookies[:cart]={:value=>cart,:expires=> Time.now+3600}
    @cart=cookies[:cart]
  end

  # GET /carts/new
  # GET /carts/new.xml
  def new
    @cart = Cart.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cart }
    end
  end

  # GET /carts/1/edit
  def edit
    @cart = Cart.find(params[:id])
  end

  # POST /carts
  # POST /carts.xml
  def create
    @cart = Cart.new(params[:cart])
    respond_to do |format|
      if @cart.save
        format.html { redirect_to(@cart, :notice => 'Cart was successfully created.') }
        format.xml  { render :xml => @cart, :status => :created, :location => @cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /carts/1
  # PUT /carts/1.xml
  def update
    @cart = Cart.find(params[:id])

    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to(@cart, :notice => 'Cart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.xml
  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    respond_to do |format|
      format.html { redirect_to(carts_url) }
      format.xml  { head :ok }
    end
  end

  def add_to_cart
     details
    id=params[:id]
    cart=Cart.find(id)
   session[:cart]=Cart.find(params[:id])
    if(session[:cart_shopping]==nil) then
      session[:cart_shopping]=Hash.new
    end
   cart_shop=session[:cart_shopping]
    @cart_shop=session[:cart_shopping]
if cart_shop.has_key?(cart) then
  cart_shop[cart]=cart_shop[cart]+1
else
  cart_shop[cart]=1
end
 render :text=> "succeffully add_to_cart"
  end
  def deal
  end
  def checkout   
    @cart_shop=  session[:cart_shopping]
    @total=0
    @cart_shop.each do |cart,amount|
      @total+=cart.price*amount
    end
  end
  def empty_cart
    session[:cart_shopping]=nil
    render :text=> "empty_cart dongzuowancheng"
  end

#def details
#  cartid=params[:id]
#  carts=(cookies[:carts]||"")
#  carts << "#{cartid}" unless carts.include?(cartid)
#  cookies[:carts]={:value=>carts,:expires=> Time.now+3600}
#  @cart=Cart.find(carts)
#end
#
#  def readCookie
#    cookieCarts=cookies[:carts]
#    @views=[]
#    cookieCarts.each(' ') do |id|
#      @views<< Cart.find(id) if id!=' '
#    end if cookieCarts
#  end

  def dealfail
    
  end
end
