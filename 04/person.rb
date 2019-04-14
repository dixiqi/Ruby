class Person
	def setName(name)
		@name=name
	end

    def setAge(age)
        @age=age
    end

    def setIsMale(isMale)
		@isMale=isMale
	end
    
	def say 
		sex=@isMale ? "boy":"girl"
		puts "大家好，我叫 #{@name},我是一个 #{sex},我今年 #{@age} 岁 "
	end
end
ahh=Person.new
ahh.setName("ABC")
ahh.setAge(5)
ahh.setIsMale(true)
ahh.say