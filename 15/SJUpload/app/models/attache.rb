class Attache < ActiveRecord::Base
#  def initialize(upload, session_id)
#      file_upload(upload, session_id) # 执行文件上传
#      super()
#      self.name = @name
#      self.url   = @url
#      self.types = @type
#      self.size = @size
#      self.last_update = @last_update
#  end
#
## 文件上传
#def file_upload(upload, session_id)
#    time_now = Time.now
#    @init_dir = "upload/#{time_now.strftime('%Y-%m-%d')}"
#
#    begin
#      FileUtils.mkpath(upload_path) unless File.directory?(upload_path)
##      if upload.kind_of?(StringIO)
#        upload.rewind
##      end
#
#      origName = upload.original_filename
#      baseName = File.basename(origName, ".*")    # 取得文件名字
#      extName = File.extname(origName).downcase # 取得文件扩展名
#      tmpName = "_1"
#      tmpExtName = "_" + time_now.to_i.to_s + extName
#
#      # 重命名
#      baseName = session_id.nil? ? Digest::MD5.hexdigest(baseName).to_s : session_id.to_s
#      baseName = baseName.upcase
#      endName = baseName + tmpExtName
#
#      # 生成不重复的文件名
#      while File.exist?(upload_path(endName))
#        arr = endName.scan(/[a-zA-Z0-9_]+/)[0].split("_")
#    endName = 2 == arr.size ? (baseName + tmpName + tmpExtName ) : (baseName + "_" + arr[1].succ.to_s + tmpExtName )
#      end
#
#      # 将文件写入磁盘
#      File.open(upload_path(endName), "wb") { |f| f.write(upload.read) }
#
#      @name = origName
#      @url = "/#{@init_dir}/#{endName}"
#      @type = (extName.delete ".")
#      @size = upload.size
#      @last_update = time_now.to_i
#
#    rescue
#      raise
#    end
#
#end
#
## 生成绝对路径
#def upload_path(file = nil)
#    "F/TenFive/SJUpload/public/#{@init_dir}/#{file.nil? ? '' : file}"
#end
#  
end
