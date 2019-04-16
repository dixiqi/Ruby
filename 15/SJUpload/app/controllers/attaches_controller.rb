class AttachesController < ApplicationController
  # GET /attaches
  # GET /attaches.xml
  def index
    @attaches = Attache.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attaches }
    end
  end




  # GET /attaches/1
  # GET /attaches/1.xml
  def show
    @attach = Attache.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attach }
    end
  end

  # GET /attaches/new
  # GET /attaches/new.xml
  def new
    @attach = Attache.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attach }
    end
  end

  # GET /attaches/1/edit
  def edit
    @attach = Attache.find(params[:id])
  end

  # POST /attaches
  # POST /attaches.xml
  def create
    @attach = Attache.new(params[:attach])

    respond_to do |format|
      if @attach.save
        format.html { redirect_to(@attach, :notice => 'Attache was successfully created.') }
        format.xml  { render :xml => @attach, :status => :created, :location => @attach }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attach.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /attaches/1
  # PUT /attaches/1.xml
  def update
    @attach = Attache.find(params[:id])

    respond_to do |format|
      if @attach.update_attributes(params[:attach])
        format.html { redirect_to(@attach, :notice => 'Attache was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attach.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /attaches/1
  # DELETE /attaches/1.xml
  def destroy
    @attach = Attache.find(params[:id])
    @attach.destroy

    respond_to do |format|
      format.html { redirect_to(attaches_url) }
      format.xml  { head :ok }
    end
  end


  def add
#    begin
   file=params[:uploadFile]    
     @file=Attache.new(params[:uploadFile])
   content_size=file.size
    file_data=file.read
    filetype=file.content_type
    @filename=file.original_filename
    fileext=File.basename(@filename).split(".")[1]
    @time=Time.now.to_s
    timeext=File.basename(@time).split("+")[0]
   @file.name=file.original_filename
   @file.url="#{Rails.root}/public/"
   @file.types=filetype
   @file.size=content_size
   @file.last_update=Time.now
    newfilename=timeext+"."+fileext
      File.open("#{Rails.root}/public/"+ newfilename,"wb"){
      |f| f.write(file_data)
    }

   if @file.save
         flash[:notice]="文件："+ newfilename+"上传成功。"+
        "上传时间是："+(Time.now).to_s+
        "上传的地址是："+ "#{Rails.root}/public/"
         redirect_to :action=>"index"
    end
   end

end
 