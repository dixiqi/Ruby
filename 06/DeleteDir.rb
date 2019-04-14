target="c:/rubyspace/delete"#指定目标目录
Dir.chdir(target)  #将当前目录切换到目标目录
Dir.foreach(Dir.pwd) do |item|
    if(FileTest.directory?(item))
		begin
		    Dir.delete(item)
			rescue Exception=>e
			puts "目录#{item}删除失败，异常信息：#{e}"
	    else
		    puts "目录#{item}删除成功"
	    end
	end
end