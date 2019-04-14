class MoreThanException<Exception
end
class LessThanException<Exception
end
class NoMethodException<Exception
end
def pro1 name,age
	puts "My name is #{@name},I'm #{@age} years old.我是设置的传入参数比定义的参数少的异常类型"
end
begin
    pro1 "追求梦想"
	rescue ArgumentError#自定义异常类时，recue后跟着的必须是系统的异常类型，否则，新创建的异常类型无法将原来的错误信息覆盖。
	    puts "错误的类型是："+LessThanException.to_s,"出现的异常信息是：您传入的参数比定义的少!"
end
def pro2 name
	puts "your name is #{name}"
end
begin
    pro2 "留言","需要"
	rescue ArgumentError
	    puts "错误的类型是："+MoreThanException.to_s,"出现的异常信息是：您传入的参数比定义的多！"
end
def show
	puts "你知道吗？有一种执着叫做等待！"
end
def future bookname
	puts "从#{bookname}中，我读懂了四个字：等待和希望。我是设置的程序中没有此方法的异常"
end
begin
   show
   rescue NoMethodException
      puts "错误的类型是："+NoMethodException.to_s,"出现的异常信息是：您所调用的方法没有在程序中声明"
end