class Student
	def student name,age
		@name=name
		@age=age
		puts "我是#{@name}，年龄#{@age}"
	end
    def happy hoppy
		@hoppy=hoppy
		puts "我的爱好是#{hoppy}"
	end
    def nengli num1,num2
		@num1=num1
		@num2=num2
		@avgNum=num1/num2
		puts "但我的数学很不好，我常常不知道#{@avgNum}为什么会等于#{@num1}/#{@num2}"
	end
    begin
	   student "HuangRong"
	   rescue
	   puts "方法student需要两个参数，而你传入的是一个参数"
	end
    begin 
	   happy
	   rescue
	   puts "参数原本就该属于人家happy的，而你没有传参数"
	end
    begin
       nengli 2,0
       rescue
	   puts "除数不能为0"
    end
end