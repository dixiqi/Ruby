class Pekingese
	def initialize(name,color,hobi)
		@name=name
		@color=color
		@hobi=hobi
	end
    def sayHello
		puts "汪汪！"
		puts "我是#@name"
		puts "我喜欢#@hobi"
	end
    attr_accessor :name, :color, :weight, :hobi
end
dog=Pekingese.new("Pet","white","meat")
puts "这里我们得到一只 #{dog.color}的小狗，\n让它来给我们打个招呼： "
dog.sayHello