filepath="c:/rubyspace/06/readme.txt"
puts "File Path:#{filepath}"
if(FileTest.exists?(filepath))
	puts "访问权限：#{File.stat(filepath).mode}"
	size=FileTest.size(filepath)/1024
	puts "文件大小：#{size}KB"
	puts "创建时间：#{File.ctime(filepath)}"
	puts "最后修改时间：#{File.mtime(filepath)}"
	puts "最后访问时间：#{File.atime(filepath)}"
else
	puts "文件不存在"
end