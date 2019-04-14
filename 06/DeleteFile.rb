def deleteFile(fn)
	begin
	    linenum=File.unlink(fn)
		puts "删除文件的个数为：#{linenum}"
		rescue Exception =>e
		puts "出现异常，异常信息为：#{e}"
	end
end

fn="fo.txt"
deleteFile(fn)
deleteFile(fn)