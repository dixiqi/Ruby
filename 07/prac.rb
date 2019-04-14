=begin
#课本209页 使用MySQL模块执行SQL命令

#MySQL模块中提供了4个类，实现对MySQL数据库的操作：
#1）Mysql类：该类提供了连接服务器的方法，以及发送SQL语句、关闭数据库连接的各个方法
#2）Mysql::Result类：该类提供了对执行过的SQL语句的结果集的处理方法
#3）Mysql::Field类：该类主要用于处理结果集中的元数据，例如列名、列数据类型、列长度、行数和列数等数据
#4）Mysql::Error类：该类主要是对MySQL数据库操作过程中的异常处理，当有语句或者方法出现错误时，将使用该类进行标记处理。

#1>使用Mysql类可以使用real_connect类方法创建一个用于操作数据库的连接
   #real_connect类方法可以接收5个参数，用于初始化数据库连接：数据库服务器地址、访问数据库的用户、访问密码、数据库名称和连接端口（若默认端口3306，则可以省略）
dbh=Mysql.real_connect("localhost","root","","test",3306)

#2>dbh对象有一个query方法，可以向Mysql数据库发送一个SQL语句
   #如果query方法发送的SQL语句返回一个结果集，该方法返回一个Mysql::Result类对象，如果该SQL语句不返回任何结果，该方法返回一个nil
sql="select * from articles"
res=dbh.query(sql)

#3>关闭数据库：close方法关闭数据库连接
dbh.close

#课本213页获取查询结果集
#Mysql::Result类的实例对象将封装由SQL语句请求服务器得来的结果集，可以使用该对象提供的方法获取并迭代结果集中的内容

#1>使用fetch_row获取结果集
   #一个指针式的方法，可以依次获取结果集中的每一行数据，知道结果集的末尾，如果读取到结果集的末尾，返回一个nil；使用该方法时，可以使用while语句依次遍历结果集中的内容。（该方法返回的是一个数组，可以用索引访问数组中的每一个元素。）
require "mysql"
#connect to the MYSQL server
dbh=Mysql.real_connect("localhost","root","","db_student")
sql="select * from scores"
res=dbh.query(sql)
puts "id\tsubj\tscor\tname\texpl"
while row=res.fetch_row
	puts "#{row[0]}\t#{row[1]}\t#{row[2]}\t#{row[3]}\t#{row[4]}"
end
res.free
dbh.close

#2>使用each迭代器访问查询结果集
require "mysql"
#connect to the MYSQL server
dbh=Mysql.real_connect("localhost","root","","db_student")
sql="select * from scores"
res=dbh.query(sql)
puts "id\tsubj\tscor\tname\texpl"
res.each do |row|
    puts "#{row[0]}\t#{row[1]}\t#{row[2]}\t#{row[3]}\t#{row[4]}"
end
res.free
res.close

#3>使用fetch_hash方法获取结果集
   #可以获取结果集中的行，用法和fetch_row类似，只不过该方法可以获取一个hash对象，可以使用查询结果集中的键名访问该对象。两者对比如下：
#fetch_hash方法
dbh=Mysql.real_connect("localhost","root","","db_student")
sql="select count(*) as row_number from scores"
res=dbh.query(sql)
puts "表中记录个数为：#{res.fetch_hash["row_number"]}"
res.free
res.close
#fetch_row方法
dbh=Mysql.real_connect("localhost","root","","db_student")
sql="select count(*) as row_number from scores"
res=dbh.query(sql)
puts "表中记录个数为：#{res.fetch_row[0]}"
res.free
res.close

#课本217页处理结果集
#1>显示结果集中的nil值
  #只需要在读取nil值的时候进行一些简单的判断，在数据为nil时将相应的数据换成想要的结果即可
requre "mysql"
dbh=Mysql.real_connect("localhost","root","","test")
sql="select * from worker"
res=dbh.query(sql)
res.each do |row|
    row[2]=0 if row[2].nil?#测试是否为空，如果为空修改为默认值
	row[3]=18 if row[3].nil?
	row[4]=20000 if row[4].nil?
	puts "#{row[0]}\t#{row[1]}\t#{row[2]}\t#{row[3]}\t#{row[4]}"
end
dbh.close

#2>特殊字符过滤
  #escape_string方法来处理特殊字符，然后向数据库中保存的时候就不会有任何问题了;该方法还可以防止SQL注入攻击，避免用户的恶意输入
requre "mysql"
dbh=Mysql.real_connect("localhost","root","","test")
details_msg=dh.escape_string("这是一段合法的文本 4\"3' ")
sql="insert into tbl_temp('details') values('#{details_msg}')"
res=dbh.query(sql)
puts "执行以后数据表相应的行数为：#{dbh.affected_rows}"
dbh.close

#课本221页 查询元数据
#1>获取行数和列数
  #Mysql::Result类还提供了两个实例方法：num_rows和num_fields方法，分别获取查询结果集中的行数和列数
require "mysql"
dbh=Mysql.real_connect("localhost","root","","test")
res=dbh.query("select * from articles")
puts "fields number: #{res.num_fields}"
puts "rows number: #{res.num_rows}"
dbh.close

#2>获取字段信息
  #Mysql::Result类的实例方法fetch_field可以依次获取结果集中的字段；在ruby中，结果集中的字段使用Mysql::Field类封装，可以使用Mysql::Field类提供的实例属性和方法获取字段信息，例如：
  #实例属性：name-字段名称，table-所属表的名称，def-字段默认值，type-字段类型，length-字段长度，max_length-最大数据的长度，flags-字段标记，decimals-数据的小数位
  #辅助方法：is_not_null?()-获取字段是否为空，is_num?()-获取字段是否为数值型，is_pri_key?()-获取字段是否为主键
require "mysql"
dbh=Mysql.real_connect("localhost","root","","test")
res=dbh.query("select * from articles")
puts "字段名    \t默认值   \t主频"
while field=res.fetch_field
	puts "#{field.name} \t#{field.def.nil?? "NULL" : field.def} \t#{field.is_pri_key?}"
end
dbh.close

#课本224页 使用DBI操作MySQL数据库
#1>使用DBI连接数据库
#1.1>引入dbi库文件
require "dbi"

#1.2>打开数据库连接
   #使用DBI的connect方法链接数据库，可以创建一个数据库连接对象，并同时打开连接。可以接收三个参数：数据库连接地址、登陆用户名和登录密码；
   #其中数据库连接地址由4部分组成:标识字符串“dbi”、驱动名称、数据库名称、主机地址
dbh=DBI.connect("dbi:Mysql:dbName:host","username","password")

#1.3>关闭数据库连接
   #数据库是一个外部资源，所以数据库连接用完以后需要关闭并释放资源。disconnect方法关闭打开的数据库连接，不接受任何参数
require "dbi"
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
if dbh
	puts "数据库连接成功"
	dbh.disconnect
	puts "数据库已经关闭"
end

#2>执行SQL语句
   #使用do放大可以执行一个SQL语句。在使用do方法执行一些非查询性语句的时候，功能和MySQL模块中的query方法基本相同。不过DBI中的do方法可以直接返回执行以后相应的行数
require "dbi"
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
num=dbh.do("insert into test_tb1('content')
               values('Test Data1'),('Test Data2')")
puts "执行插入操作响应行数为： #{num}"
dbh.disconnect if dbh

#课本227页 DBI中的占位符
#DBI模块提供了占位符机制，可以不用在SQL语句中直接将数据拼接进去，使用一些特殊的符号标记数据的位置。执行时，用真实的数据填充占位符的位置。
#选用的占位符为问号“？”,可以将需要放置参数的地方使用问号标记，然后再调用do方法的时候将参数作为方法的剩余参数传入即可
require "dbi"
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
row=dbh.do("insert into test1(id,name) values(?,?),(?,?)",3,"张三丰",5,"李亮以")
puts "响应行数为：#{row}"
dbh.disconnect

#课本230页 使用DBI处理查询结果集
#使用excute方法执行
require "dbi"
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
sth=dbh.prepare("select count(*) as row_num from articles")
sth.execute
row_num=sth.fetch_hash["row_num"] 
puts "数据表中的数据行数为： #{row_num}"
dbh.disconnect

#课本232 DBI中的事务处理
#DBI可以设置是否自动提交事务。如果设置为不自动提交事务，可以使用显式的提交和回滚事务，还可以使用transaction方法来处理事务

#1>自动提交事务：使用设置数据库句柄的方法来设置自动提交事务
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
dbh['AutoCommit']=true#如果设置自动提交事务，那么系统将每执行一次SQL语句都将提交一次请求，西奥过和不用事务效果相同
dbh['AutoCommit']=false

#2>显式提交事务：使用DBI中的提交方法commit和回滚方法roolback
require "dbi"
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
dbh['AutoCommit']=false
begin
      dbh.do("insert into test1 values(4,'OKABC')")
	dbh.do("insert into test1 values(' ',' ')")#执行有误，所以在执行的时候将触发异常并回滚事务
	dbh.commit
rescue Exception=>e
    puts "Error: #{e}"
	dbh.rollback
end

#3>使用transaction方法处理事务：该方法可以接受一个要求事务操作的处理块。在执行这个方法时，执行这个快，然后根据这个快中的内容判断是否提交或自动回滚事务。
require "dbi"
dbh=DBI.connect("dbi:Mysql:test:localhost","root","")
dbh['AutoCommit']=false
begin
    dbh.transaction do |dbh|
	    dbh.do("insert into test1 values(4,'OKABC')")
	    dbh.do("insert into test1 values(' ',' ')")
	end
rescue Exception=>e
    puts e
end
=end