
puts "请输入一个文件名："
filename=gets
filename=filename.chomp
begin
	File.delete(filename)
	rescue Exception=> e
	puts "删除失败 #{filename}"
	else
	puts "删除 #{filename} 文件执行成功"
end