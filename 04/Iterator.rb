class Student
	def initialize(number,name)
		@number=number
		@name=name
	end
    attr_accessor :number, :name
end
def each(stus)
	for stu in stus
		yield(stu)
		puts stu.number+"\t"+stu.name
	end
end

students=Array.new
students[0]=Student.new("001","zhangwen")
students[1]=Student.new("002","libei")
students[2]=Student.new("003","liujingsheng")

each(students) do
    |stu| stu.number="stu"+stu.number
end