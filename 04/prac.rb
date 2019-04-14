=begin
#课本95页 类
#1>self关键字
class Animal
	puts self #声明类的时候，当前对象只是Animal,它是一个类
	puts self.class
	def put
		puts self#运行的时候，就是一个真正的对象了（这里输出的是对象的内存地址），该对象是一个Animal类的对象
		puts self.class
	end
end
a=Animal.new
a.put

#2>追加类
class Animal 
	def put
		puts "这是一个put方法"
    end
end
class Animal#追加类可以把一个类的各个部分分别存到不同的文件中
	def show
		puts "这是一个show方法"
	end
end
a=Animal.new
a.put
a.show

#3>嵌套类
class Animal
	class Head
		def put
			puts "这是Head类里的put方法"
		end
	end
end
h=Animal::Head.new
h.put 
class Animal::Body
	def show
		puts "这是Body里的show方法"
    end
end
b=Animal::Body.new
b.show

#4>特殊类
class Animal
	#这是一个空类
end
a=Animal.new
class<<a #特殊类是被追加到特定对象上，对该对象所属的类没有影响，对该对象所属的类的其他对象也没有影响
	def put 
		puts "这个是特殊类里的put方法"
	end
end
a.put 

#课本99页 方法
#1>参数的默认值和返回值
class Dog
	def eat (food="bone")#默认值
		puts "小狗正在吃"+food
	end
end 
dog=Dog.new
dog.eat("meat")#传入参数时调用传入的参数
dog.eat#否则使用默认值进行执行

class Cat
	def GetHobi
		"fish"
	end
    def GetWight
		return "2kg"
	end
end
cat=Cat.new
puts "The cat likes to eat#{cat.GetHobi}"
puts "The cat has a weight#{cat.GetWight}"

#2>特殊方法
class Dog
	#一个空类
end
dog=Dog.new
def dog.show#直接为该对象扩展一个方法
	puts "I am a cute dog"
end 
dog.show

#3>定义类方法
class Dog
	def Dog.show#若类方法声明在类中，则可是直接使用self关键字代替类名
		puts "I am a cute dog2"
	end 
end
Dog.show

#课本103页 实例变量和类变量
#1>实例变量
@name="Tom" #在顶层类和方法中使用
class Cat
	@color="yellow" #在当前类下使用
	def init
		@weigth="2kg" #只在方法init中使用
	end
    def show
		puts "#@name is a #@color and #@weigth cat"
	end
end
cat=Cat.new
cat.init
cat.show

#2> 类变量
@@name="zhanghaohua"  #类变量可以在各个类之间共享数据，但必须以两个@开头
class Cat
	def say
		puts "我是一只小黑猫，我的主人是#@@name"
	end
end
class Dog
	def say
		puts "我是一只小白狗，我的主人是#@@name"
	end
end
cat=Cat.new
cat.say
dog=Dog.new
dog.say

#课本106页 属性
#1> 设置实例变量值
class Person
	def name=(val) #设置实例变量值的属性方法，需要以=为后缀，并且必须设置一个方法参数
		@name=val
	end
end
p=Person.new
p.name="joker"

#2> 属性定义标识符
class Exemple
	attr :attr1,key #根据布尔变量key的值定义一个可读写的属性。如果key=false，则设置为只读；否则可读写
	attr_reader :attr1, :attr2 #定义一个或多个只读的属性
	attr_writer :attr1, :attr2  #定一个或多个只写的属性
	attr_accessor :attr1, :attr2  #定义一个或多个可读写的属性
end  

#课本111页 块
#1>
def say
	puts "Hello"
	yield #可以将一个代码块作为一个参数传递给方法，然后在方法中使用yield关键字调用传入的代码块
	puts "Bye"
end
say do
   puts "What you say?"
end
#2>
def say
	name="joker"
	puts "Hello,I'm"+name
	yield name #可以为代码块添加参数，然后再方法体中使用yield关键字调用代码块的时候传入参数，再带参数的代码块中格式：|arg1,arg2|
end
say do |name|
    puts "Hello,"+name
end
#3>
def say
	puts yield #代码块还可以有返回值，返回值使用最后一个表达式的值，而且在方法中也可以获取代码块的返回值
end
say do
"Hello ,joker"
end

#课本114页 类的继承
#1> 使用父类的元素
class Bird
	def initialize
		@wing=2
	end
end
class Chicken<Bird
	def show
		puts "这只小鸡有 #@wing 只翅膀"
	end
end
chick=Chicken.new
chick.show

#2>调用父类的构造方法
class Bird
	def initialize(leg,wing)
		@leg=leg
		@wing=wing
	end
end
class Chicken<Bird
	def initialize(color)
		super(2,2)
		@color=color
	end
    def show
		puts "这只 #@color 色的小鸡有 #@wing 只翅膀， #@leg 条腿"
	end
end
chick=Chicken.new "yellow"
chick.show

#3> 方法的重写
class Bird
	def fly
		puts "小鸟在飞"
	end
end
class Chicken<Bird
	def fly
		puts "小鸡飞上枝头"
	end
end
class Glede<Bird
	def fly
		puts "老鹰在天上飞"
	end
end
class NoNameBird<Bird
end
chick=Chicken.new
glede=Glede.new
noNameBird=NoNameBird.new
chick.fly
glede.fly
noNameBird.fly
=end
 