require "dbi"

begin
    dbh=DBI.connect("dbi:Mysql:db_log:localhost","root","")
	dbh.do("create table log_02(
	    'id' int unsigned NOT NULL AUTO_INCREMENT,
		'user' varchar(50),
		'operate' varchar(250),
		'record_time' datatime,
		PRIMARY KEY('id')
		)")
	rows_num=dbh.do("
	    insert into log_02(user,operate,record_time)
		values('admin','账号admin登陆系统','2010-12-25 12:25:30'),
		('admin','管理员admin删除用户 joker','2010-12-25 12:27:35')
		")
	puts "操作响应行数为： #{rows_num}"
rescue Mysql::Error=>e
    puts "Error Number: #{e.error}"
	puts "Error Message: #{e.error}"
	puts "Error State: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure 
    dbh.disconnect if dbh
end