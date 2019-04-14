require "mysql"
begin
    dbh=Mysql.real_connect("localhost","root","","library")
	
    sql="select * from books"
	res=dbh.query(sql)
	
	res.each do |row|
	    puts "#{row[0]}\t #{row[1]}\t #{row[2]}\t #{row[3]}\t #{row[4]}\t #{row[5]}\t #{row[6]}\t #{row[7]}\t "
	end
    
	res.free
	puts "一共得到#{dbh.affected_rows}条数据"
rescue Mysql::Erroe=>e
    puts "Error Number: #{e.error}"
	puts "Error Message: #{e.error}"
	puts "Error State: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
    dbh.close
end
	
