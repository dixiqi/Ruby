require "mysql"

dbh=Mysql.real_connect("localhost", "root", "", "test", 3306)
print "请输入产品名称："
name=gets.chomp
print "请输入产品价格："
price=gets.chomp
print "请输入产品型号："
model=gets.chomp
print "请输入产品说明："
details=gets.chomp

dbh.query("
insert into 
products(`name`, `price`, `model`, `details`)
values('#{name}',#{price},'#{model}','#{details}')
")
puts "向数据库中成功保存了#{dbh.affected_rows}条记录"

dbh.close




=begin
create table products( 
`id` int unsigned NOT NULL AUTO_INCREMENT, 
`name` varchar(50) NOT NULL, 
`price` int, 
`model` varchar(20), 
`details` text, PRIMARY KEY (`id`))
=end
