require "dbi"

begin
    dbh=DBI.connect("dbi:Mysql:db_oa:localhost","root","")
	
	rows_num=dbh.do("
	     insert into
		staffs('name','sex','age','politics_status','IDNO','birthdata','email','mobile','native_place','blood_type','nation','work_unit','school')
		values(?,?,?,?,?,?,?,?,?,?,?,?,?)",
		"李晓蓓","女"，25，
		"预备党员",
		"410184198506158388","1985-06-15",
		"lixiaobei123456@163.com","1888888888","郑州",
		"O","汉",
		"河南省一二三有限公司",
		"北京大学")
	puts "您想数据库中插入了#{rows_num}条数据"
rescue Mysql::Error=>e
    puts "Error Number: #{e.error}"
	puts "Error Message: #{e.error}"
	puts "Error State: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
dbh.disconnect if dbh
end