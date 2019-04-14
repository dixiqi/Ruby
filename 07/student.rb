class Student
	def initialize(name,number,class1,sex=nil,age=nil,details=nil)
		@name=name
		@number=number
		@class1=class1
		@sex=sex
		@age=age
		@details=details
	end
    attr_accessor :id,:name,:number,:class1,:sex,:age,:details
end

peter=Student.new('Peter','STU00324','计算机3班')
libei=Student.new('LiBei','STU00353','美术2班','女',nil,'08年转学至此')

require "mysql"

begin
    dbh=Mysql.real_connect("localhost","root","","db_student")
	
	sql_peter="insert into students(name,number,class)
	               values('#{dbh.escape_string(peter.name)}',
				'#{dbh.escape_string(peter.number)}',
				'#{dbh.escape_string(peter.class1)}')"
	sql_libei="insert into students(name,number,class,sex,details)
			   values('#{dbh.escape_string(libei.name)}',
				'#{dbh.escape_string(libei.number)}',
				'#{dbh.escape_string(libei.class1)}',
				'#{dbh.escape_string(libei.sex)}',
				'#{dbh.escape_string(libei.details)}')"
	dbh.query(sql_peter)
	dbh.query(sql_libei)
	
	sql="select * from students"
	res=dbh.query(sql)
	
	res.each do |row|
		row[4]='男'.dup.force_encoding ("ASCII-8BIT") if row[4].nil?
		row[5]='20' if row[5].nil?
		row[6]='NULL' if row[6].nil?
		puts "#{row[0]}\t#{row[1]}\t#{row[2]}\t#{row[3]}\t#{row[4]}\t#{row[5]}\t#{row[6]}"
	end
rescue Mysql::Error=>e
    puts "Error Number: #{e.error}"
	puts "Error Message: #{e.error}"
	puts "Error State: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
    dbh.close
end