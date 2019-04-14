class Animal
	def initialize(name)
		@name=name
	end

    def sayHello
	    puts " "
	end
end
class Dog<Animal
	def sayHello
		puts "我是小狗 #@name ，汪汪！"
	end
end
class Person<Animal
end
class Chinese<Person
	def sayHello
		puts "你好，我是中国人，我叫 #@name"
	end
end
class Amercian<Person
	def sayHello
		puts "Hello,I'm Ameician,My name is #@name"
	end
end
dog=Dog.new("Pet")
amercial=Amercian.new("Tom")
chinese=Chinese.new("李白")
dog.sayHello
amercial.sayHello
chinese.sayHello
