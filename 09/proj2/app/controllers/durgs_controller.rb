class DurgsController < ApplicationController
  # GET /durgs
  # GET /durgs.xml
  def index
    @durgs = Durg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @durgs }
    end
  end

  # GET /durgs/1
  # GET /durgs/1.xml
  def show
    @durg = Durg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @durg }
    end
  end

  # GET /durgs/new
  # GET /durgs/new.xml
  def new
    @durg = Durg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @durg }
    end
  end

  # GET /durgs/1/edit
  def edit
    @durg = Durg.find(params[:id])
  end

  # POST /durgs
  # POST /durgs.xml
  def create
    @durg = Durg.new(params[:durg])

    respond_to do |format|
      if @durg.save
        format.html { redirect_to(@durg, :notice => 'Durg was successfully created.') }
        format.xml  { render :xml => @durg, :status => :created, :location => @durg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @durg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /durgs/1
  # PUT /durgs/1.xml
  def update
    @durg = Durg.find(params[:id])

    respond_to do |format|
      if @durg.update_attributes(params[:durg])
        format.html { redirect_to(@durg, :notice => 'Durg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @durg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /durgs/1
  # DELETE /durgs/1.xml
  def destroy
    id = params[:id]
    if "0" == id
      Durg.delete_all("`expiration` < '#{ Time.now }'")
    else
      @durg = Durg.find(id)
      @durg.destroy
    end

    respond_to do |format|
      format.html { redirect_to(durgs_url) }
      format.xml  { head :ok }
    end
  end
end
