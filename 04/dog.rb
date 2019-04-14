class Dog
	puts "这是一条哈巴狗"
end
class Dog
	puts "这条哈巴狗的颜色是黄色"
	class Tail
		puts "奇怪的是这条狗有一条白色的尾巴"
	end
end
dog=Dog.new
class<<dog
	def show
		puts "冬天了，主人给它穿了一件小皮衣"
	end
end 
dog.show
