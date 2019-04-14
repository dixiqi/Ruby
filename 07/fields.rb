require "mysql"
begin
dbh=Mysql.real_connect("localhost","root","","db_student")
sql="select * from students"
res=dbh.query(sql)

puts "字段名   \t类型\t默认值\t字段长度\t主键\t不允许空"
while field=res.fetch_field
	puts "#{field.name}  \t#{field.type}\t#{field.def.nil?? "NULL": field.def}  \t#{field.length}\t#{field.is_pri_key?}\t#{field.is_not_null?}"
end
rescue Mysql::Error=>e
    puts "Error Number: #{e.error}"
	puts "Error Message: #{e.error}"
	puts "Error State: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
    dbh.close
end