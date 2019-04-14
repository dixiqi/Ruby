#首先添加一个用于封装成绩信息的类
class Score
	def initialize(id=0,subject,score,student_name,explain)
		@id=id
		@subject=subject
		@score=score
		@student_name=student_name
		@explain=explain
	end
	
	attr_accessor :id, :subject,:score,:student_name,:explain
end

#引入mysql类文件
require "mysql"

def creatSQL(score)#根据成绩对象创建Insert操作的SQL语句
	"insert into scores(subject,score,student_name,'explain') "+
	"values('#{score.subject}',#{score.score},'#{score.student_name}','#{score.explain}')"
end

def saveScore(dbh,score)#保存成绩信息
	sql=creatSQL(score)
	dbh.query(sql)
	if(dbh.affected_rows==1)#affected_rows方法获取SQL语句相应的行数
		puts "学生 #{score.student_name}的成绩已被加入数据库"
	end
end

#准备向数据库中插入的数据
peter=Score.new("math",83,"Peter","")
libei=Score.new("math",100,"LiBei","")
liubuyi=Score.new("math",58,"LiuBuyi","因为迟到，所以没做完")

#捕获异常
begin
    #创建数据库连接对象并打开数据库连接
	dbh=Mysql.real_connect("localhost","root","","db_student")
	
	#向数据库中保存三个学生的成绩
	saveScore(dbh,peter)
	saveScore(dbh,libei)
	saveScore(dbh,liubuyi)
	
	#因为改卷老师手误，改错Peter同学的一道题，修改Peter的成绩
	sql="update scores set score=#{86} where student_name='#{"peter"}'"
	dbh.query(sql)
	if(dbh.affected_rows==1)
		puts "学生#{peter}的成绩修改成功"
	end
    
	#后来发现libei同学作弊，将该学生成绩作废，所以这里删除libei的成绩
	sql="delete from scores where student_name='#{libei}'"
	dbh.query(sql)
	if(dbh.affected_rows==1)
		puts "学生#{LiBei}的成绩作废"
	end
    
rescue Mysql::Error=>e
	puts "Error Number: #{e.error}"
	puts "Error Message:#{e.error}"
	puts "Error State:#{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
    dbh.close
end