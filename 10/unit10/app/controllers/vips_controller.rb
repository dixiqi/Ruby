class VipsController < ApplicationController
  # GET /vips
  # GET /vips.xml
  def index
    @vips = Vip.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vips }
    end
  end

  # GET /vips/1
  # GET /vips/1.xml
  def show
    @vip = Vip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vip }
    end
  end

  # GET /vips/new
  # GET /vips/new.xml
  def new
    @vip = Vip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vip }
    end
  end

  # GET /vips/1/edit
  def edit
    @vip = Vip.find(params[:id])
  end

  # POST /vips
  # POST /vips.xml
  def create
    @vip = Vip.new(params[:vip])

    respond_to do |format|
      if @vip.save
        format.html { redirect_to(@vip, :notice => 'Vip was successfully created.') }
        format.xml  { render :xml => @vip, :status => :created, :location => @vip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vips/1
  # PUT /vips/1.xml
  def update
    @vip = Vip.find(params[:id])

    respond_to do |format|
      if @vip.update_attributes(params[:vip])
        format.html { redirect_to(@vip, :notice => 'Vip was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vips/1
  # DELETE /vips/1.xml
  def destroy
    @vip = Vip.find(params[:id])
    @vip.destroy

    respond_to do |format|
      format.html { redirect_to(vips_url) }
      format.xml  { head :ok }
    end
  end
end
