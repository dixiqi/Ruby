=begin
#课本126页  模块
#1>模块的定义
module ModuleName
def modulInfo
	puts "我是模块里面的方法成员"
	end
def self.showInfo
	puts "我是模块里面的类方法成员"
	end
end
ModuleName.showInfo

#2>混含操作
module Past
def pastInfo
	puts "每一段记忆，都有一个密码！"
	end
end
class PastInclude
	include Past#类中可以包含多个模块。混含操作的原因：模块没有实例，不能访问实例成员
	end
pastInclude=PastInclude.new
pastInclude.pastInfo

#3>命名空间
module ModulePlace
class FirstPlace
	def moduleInfo
		puts "我是模块定义的ModulePlace命名空间中的moduleInfo方法"
	end
end
end
module SmodulePlace
class SecondPlace
	def moduleInfo
		puts "我是模块定义的SmodulePlace命名空间中的moduleInfo方法"
	end
end
end
firstPlace=ModulePlace::FirstPlace.new
firstPlace.moduleInfo#只要模块的名称不同，在模块中无论是定义相同的方法或者相同的类都不会发生冲突
secondPlace=SmodulePlace::SecondPlace.new
secondPlace.moduleInfo

#课本129页 BEGIN块和END块
#1>语法
BEGIN{#当一个文件中含多个BEGIN块时，程序执行的顺序是按照文件加载的顺序
     puts "武林大会正式开始！正在寒暄中......"
}
BEGIN{
     puts "西毒都杨峰天下第一"
}
BEGIN{
     puts "东邪黄岛主天下第二"
}
BEGIN{
     puts "南帝一定大师天下第二"
}
BEGIN{
     puts "北丐洪七公天下第三"
}
END{#当一个文件中含多个END块时，程序执行的顺序是以他们出现的相反顺序执行的
     puts "中神通王重阳不参赛"
}
END{
	 puts "第一"
}
END{
	 puts "第二"
}
END{
	 puts "第三"
}

#2>at_exit用法
BEGIN{#当一个文件中含多个BEGIN块时，程序执行的顺序是按照文件加载的顺序
     puts "武林大会正式开始！正在寒暄中......"
}
at_exit{#at_exit执行的顺序是以他们出现的相反顺序执行的,并且在rb程序中如果有END块，会首先执行END块中的代码
     puts "三好学生"
}
at_exit{
     puts "学习好是第一"
}
at_exit{
     puts "人品好是第二"
}
at_exit{
     puts "气质好是第三"
}
END{
     puts "三好学生是我的偶像"
}

#课本132页 加载其他文件
#1>load
puts "加载rubrspace文件夹下的05文件中的moduleY.rb文件"
load "C:/rubyspace/05/modleY.rb"#load方法可以加载多次

#2>require
require "#{File.dirname(__FILE__)}/modleY"#require方法可以重复使用，但是只能加载一次
modulea

#3>extend
module Mood
def say
	p "hello,everyone!"
	end
end
class Person
	extend Mood#extend用来在一个对象中引入一个模块，这个类也具备了这个模块的方法，类似于继承。
	end
person=Person.new
person.extend(Mood)
person.say

#课本135页 别名和定义
#1> 别名
def name
	puts "我是定义的name方法"
	end
alias new_name name#为方法或者全局变量添加别名使用alias，
def name
	puts "重新定义后的name方法"
	end
puts name
puts new_name#别名方法和原始方法是绑定的，即使重新定义了原始方法，别名方法仍然保持着重定义前的老方法的特性

#2>定义
1）defined?表达式
#判断某个表达式是否已经完成定义使用语法为 defined? 表达式 ，如果完成返回false，否则返回一个保存表达式类型的字符串.
class Return
	def Replay
		puts "你知道08版欧阳克是谁演的吗？是的，棒极了！"
		puts defined? "真的很好"  #后面仅仅是一个表达式，所以返回该变量，即expression
	end
end
ret=Return.new
puts defined? ret.Replay#ret.Replay是一个方法，所以返回method
ret.Replay
2)undef  方法名[,方法1, ...]
#undef，可以同时释放一个或多个方法，语法为 undef  方法名[,方法1, ...]
class Fly
	def go
		puts "飞机正在起飞ing..."
	end
end
fly=Fly.new
undef go#使用undef将类中的go方法释放了定义
puts defined? fly.go

#课本138页 method_missing的使用
class Missing
	def miss
		puts "我没有丢失miss的方法"
	end
    def method_missing pd
		puts "不好意思，在Missing类中不存在#{pd.to_s}类方法"
	end
end
missing=Missing.new
puts missing.miss
puts missing.nihao
puts missing.Mynihao

#课本142页 Proc对象
#1>Proc是对块机器局部变量的作用域进行对象化后处理得到的过程对象，即Proc内的局部变量会得到动态局部变量的效果
def call_proc(pr)
	a="我是在call_some_proc中声明的变量"
	puts a
	pr.call#执行Proc对象，需要发送call消息给这个对象
end
a="我是在外部声明的变量"
pr=Proc.new{puts a}#作为Proc对象的一个定义体被保存下来，当调用发生时，作用域中的局部变量仍处在作用域中。
pr.call
call_proc(pr)

#2>在定义方法时，在方法的最后一个形参前添加&符号，程序会将这个形参作为一个Proc对象来处理
def grab_blc(&blc)
	blc.call
end
grab_blc{puts "知道我是谁吗？我是一个Proc对象"}

#3>使用proc方法生成proc对象
Value=proc do |value|
    puts "使用Proc对象执行代码块，传递的值是：#{value}"
end
Value.call("happy new year 2019")
def info
	yield "Proc对象作为一个参数传递"
end
info &Value

#课本145页 eval方法:动态执行字符串保存的Ruby代码
puts "在字符串中创建方法名称为evalShow"
str="def evalShow;puts '我是在字符串中创建的方法，名称是evalShow';end"
eval(str)#使用eval动态执行代码循环速度要比不使用eval的速度慢，所以不要大量使用

#课本146页 异常处理机制
#1>
puts "---------下面的代码是使用rescue来捕获异常的实例---------"
begin
class Swim
	def swimming name
		@name=name
		puts "美人鱼#{@name}在水里游来游去"
	end
swim=Swim.new
swim.swimming
rescue
	puts "swimming的参数不一致，出现异常，请注意！"
end
end

#2>
puts "---------不同的异常采用不同的异常处理快---------"
begin
class Fly
	def flying speed
		@speed=speed
		puts "飞机正在以#{@speed}的速度向前飞行"
	end
end
fly=Fly.new
fly.show
fly.flying
rescue NoMethodError#尽管为一段代码制定了多个异常处理块，程序仍以第一个匹配rescue捕获的异常执行
     puts "在程序中没有此方法，因此调用失败，因而抛出异常"
rescue ArgumentError
     puts "在程序中穿的参数不一致，因而抛出异常"
end

#3>采用"rescue 异常类=>实例名"的方式获取引发异常的实例，然后通过实例调用异常类获取异常信息
def myPro
	puts "这是我定义的myPro方法"
end
begin
myPro "a","b"
rescue Exception=>e
puts "程序出现了异常"
puts "#{e.backtrace}"
puts "#{e.to_s}"
puts "#{e.message}"
end

#4>$!全局变量获得程序中最近一次的错误信息；$@保存了发生异常的位置
def word wordname
	@wordname=wordname
	puts "这个单词我熟悉的意思是：#{@wordname}"
end
begin
word
rescue
    puts "系统出现的异常信息是：#{$!.to_s}"
	puts "错误出现的位置是：#{$@.to_s}"
end

#5>retry在遇到异常的情况下，重新跳转到begin部分，再次执行此段代码
error=true
begin
   puts "点击网络服务，打开标签......里面显示的是你保存的标签"
   if error
	   raise 'error'
	end
    puts "没有出现“网络连接失败”则继续执行，页面成功显示"
rescue 
    error=false
	puts "网络连接失败"
	retry
end

#6>raise可以显示想要抛出的异常，同样的也可以将抛出的异常捕获
def info
	raise NameError,"方法info显示抛出异常"
end
begin
info
rescue NameError
   puts "捕获了NameError异常"
end

#课本152页 创建异常类
#1>自定义异常类
class NewException<Exception
end
def soft
	puts "这是我自己的程序"
end
begin
    soft "count"
	rescue ArgumentError
	   raise NewException,"参数错误了"
end

#2>在自定义异常中添加成员
class AngelError<Exception
	def ErrorMessage
		return "自定义的异常信息"
	end
end
def doctor white,angel
	puts "#{white}是#{angel}"
	raise AngelError
end
begin
doctor "白衣","天使"
rescue AngelError=>e
puts "异常出现在#{e}"
puts "出现的异常信息是：#{e.ErrorMessage}"
end

#课本154页 正则表达式：是一个对象，因此可以给表达式发信息。使用内置方法接收表达式的参数，然后对字符串进行验证
#1>使用match方法实现正则表达式和相应的字符串相匹配：如果匹配，返回true，否则，返回false
if /[a-z]/.match("dry")
	puts "字符串dry匹配上面的正则表达式"
else
	puts "字符串dry不匹配上面的正则表达式"
end
if "lws".match(/[a-z]/)
	puts "字符串lws匹配上面的正则表达式"
else
	puts "字符串lws不匹配上面的正则表达式"
end

#2>"=~"操作符判断字符串和正则表达式是否匹配：如果有匹配的字符串会返回值的索引，否则返回nil
puts "Hello,Jack"=~/Hello*/
puts "Jack,Hello"=~/Hello*/

#3>使用小括号指定获取额子字符串，然后将匹配的字符串保存；全局变量$n(表示是和正则表达式中从左侧开始的第n个小括号内子正则表达式所匹配的字符串相对应)
reg=/([a-z]+),([A-Za-z]+)/
str="abc,Dcy"
reg.match(str)
puts "匹配第一个小括号中的正则表达式是#{$1}"
puts "匹配第二个小括号中的正则表达式是#{$2}"

#课本157页 时间和日期
#1> 使用Time类生成一个当前的时间对象
time=Time.new 
puts "当前的日期时间是：#{time}"
puts "当前的年份是：#{time.year}年"
puts "当前的月份是：#{time.month}月"
puts "当前的日是：#{time.day}日"
puts "当前的小时是：#{time.hour}小时"
puts "当前的分钟是：#{time.min}分钟"
puts "当前的秒是：#{time.sec}秒"
puts "当前的微秒是：#{time.usec}微秒"

#2>使用mktime和local方法创建时间对象，需要传递参数从而形成一个新的Time对象。传递的参数顺序依次是:年、月、日、时、分、秒、微秒，这里年对应的参数必须填写，其余的可选。
mkTime1=Time.mktime(2010)
mkTime2=Time.mktime(2010,12)
mkTime3=Time.mktime(2010,12,20)
mkTime5=Time.mktime(2010,12,20,17,50)
mkTime7=Time.mktime(2010,12,20,17,50,40,2268)
localTime1=Time.local(2011)
localTime2=Time.local(2011,1)
localTime4=Time.local(2011,1,6,15)
localTime6=Time.local(2011,1,6,15,53)
localTime7=Time.local(2011,1,6,15,50,53,2589)
puts "---------下面显示的时使用mktime方法创建的时间对象---------"
puts mkTime1
puts mkTime2
puts mkTime3
puts mkTime5
puts mkTime7
puts "---------下面显示的时使用local方法创建的时间对象---------"
puts localTime1
puts localTime2
puts localTime4
puts localTime6
puts localTime7

#3>使用gm方法创建时间对象，但他使用的时GMT和UTC时区
time=Time.gm(2011,1,6,16,20,20)
puts "使用gm方法创建的时间对象是："+time.to_s

#4>提供了返回yday,mday,wday方法
puts "-------分别返回的第几天-------"
time=Time.new
puts "一年中的第#{time.yday}天"
puts "一月中的第#{time.mday}天"
puts "一星期中的第#{time.wday}天"

#5>得到时间的间隔：间隔的单位为秒
puts "-------计算相隔的时间-------"
mkTime=Time.mktime(2019,1,6,17,00,45)
mkTime1=mkTime+60
mkTime2=mkTime+3600
mkTime3=Time.now-mkTime
puts "现在和约定的时间相差："+mkTime3.to_s+"秒"

#6>日期的格式化
time=Time.new
puts time.strftime("%Y年%m月%d日 %H时%M分%S秒")
puts time.strftime("今天是：%x")
puts time.strftime("今天是%m月中的第%d天")
puts time.strftime("今天是%B月%a————%A")

#课本162页 线程的创建及操作
#1>创建线程
thread=Thread.new "有一种爱叫放手" do |name|
	puts "#{name}"
end

#2>线程的执行时交替执行的
i=1
Thread.new 10 do |value|
    while i<value
		puts "#{i}"
		i=i+1
	end
end
Thread.new do
	10.times do |a|
		puts "第#{a+1}次输出"
	end
end

#3>使用start和fork方法创建线程
thread=Thread.start "hello" do |value|
    puts "我是使用start方法来创建的线程+#{value}\n"
end
thread=Thread.fork "world" do |value|
    puts "我是使用fork方法来创建的线程+#{value}\n"
end

#4>使用current方法返回线程
Thread.fork do 
	currentThread=Thread.current
	puts "使用start创建一个新的线程，当前的线程时："+currentThread.to_s+"\n"
end
mainThread=Thread.current 
puts "主线程是"+mainThread.to_s+"\n"

#5>使用join方法可以挂起当前线程，然后执行指定的线程
i=1
threadjoin1=Thread.new 10 do |value|
	while i<value
		puts "#{i}"
		i=i+1
	end
end
threadjoin1.join
threadjoin2=Thread.new do 
	10.times do |a|
	    puts "第#{a+1}次输出"
	end
end
threadjoin2.join

#6>使用value可以挂起线程，并获得线程的值
i=1
threadjoin1=Thread.new 10 do |value|
	while i<value
		puts "#{i}"
		i=i+1
	end
end
threadjoin1.value
threadjoin2=Thread.new do 
	10.times do |a|
	    puts "第#{a+1}次输出"
	end
end
threadjoin2.join
puts "线程threadjoin2的值是："+threadjoin2.value.to_s

#7>使用pass暂停线程，并可以执行其他可执行的线程
threadpass1=Thread.start do
    threadpass1.pass
	puts "我没希望了，看你的了，加油！\n"
end
Thread.start do 
    puts "看我的吧！\n"
end

#8>使用sleep方法使线程进入休眠，待时间结束，线程会自动从sleep状态转换为可执行状态，也可以用wakeup唤醒处于休眠的线程
puts "开始的时间是："+Time.new.to_s
sleep 2
puts "暂停两秒后的时间是："+Time.new.to_s

puts "第二次开始的时间是："+Time.new.to_s
sleep 3
puts "暂停两秒后的时间是："+Time.new.to_s

#9>使用exit方法和kill方法均可以停止当前线程
i=1
threadkill1=Thread.new 10 do |value|
    while i<value
		puts "#{i}"
		i=i+1
		if(i>5)
			Thread.kill threadkill1
		end
	end
end
threadexit1=Thread.new do 
    10.times do |a|
	    puts "第#{a+1}次比赛"
		if(a>=4)
			Thread.exit
		end
	end
end

#10>线程的状态
threadpass1=Thread.start do
    puts "我是正在运行的\n"
end
s1=threadpass1.status
puts "我的状态是："+s1.to_s

#11>main方法：指向进程的主进程，用于判断该线程是否为主线程；list方法：返回一个数组，用于存储线程；
thread1=Thread.new do
sleep2
end
thread2=Thread.new do 
   if Thread.current==Thread.main 
	   puts "当前的线程就是主线程"
	end
end
num=Thread.list.size
puts "线程的数量是：#{num}"
if Thread.list.include?(Thread.main)
	puts "现在运行的就是主线程"
end

#12>使用priority方法可以查看和修改线程的优先级别
thread3=Thread.new(sleep)
thread4=Thread.new do
    puts "当前的线程是否被执行：#{thread4.alive?}"
end
thread4.priority=4
puts "线程thread3的优先级是：#{thread3.priority}"
puts "线程thread4的优先级是：#{thread4.priority}"

#课本169页 同步线程
#1.1>Mutex类：只负责同步
@num=200
@mutex=Mutex.new
def ticketNum(num)
	@mutex.lock#锁定当前线程：如果在程序中多个线程同时需要一个线程，可将这个线程使用lock锁定
	Thread.pass
	if(@num>num)
		@num-=num
		puts "您已成功购买#{num}张火车票"
	else
		puts "对不起，您购买的#{num}张火车票失败，已经没有了"
	end
    @mutex.unlock#解除锁定
end
ticketsuccess=Thread.new(199){|num| ticketNum(num)}
ticketsuccess1=Thread.new(2){|num| ticketNum(num)}
ticketsuccess.join
ticketsuccess1.join

#1.2>try_lock锁定：如果另一个资源已经被锁定，返回false
mutex=Mutex.new 
thread=Thread.new do 
    mutex.lock
	sleep 30
end
thread1=Thread.new do 
	if mutex.try_lock
		puts "其他线程，没有占用，您可以使用"
	else
		puts "她是我的，不能被锁定"
	end
end

#1.3>使用synchronize锁定线程
@num=200
@mutex=Mutex.new
def ticketNum(num)
	@mutex.synchronize do 
	Thread.pass
	   if(@num>num)
	  	  @num-=num
		  puts "您已成功购买#{num}张火车票"
	    else
		  puts "对不起，您购买的#{num}张火车票失败，已经没有了"
	    end
    end
end
ticketsuccess=Thread.new(199){|num| ticketNum(num)}
ticketsuccess1=Thread.new(2){|num| ticketNum(num)}
ticketsuccess.join
ticketsuccess1.join

#2.1>Queue类：负责同步和数据交接,一个支持线程的队列。能同步对队列末尾进行访问，即不同线程可以同时使用同一个队列，不用担心是否能够同步
require 'thread'
queueR=SizedQueue.new(25)#使用SizedQueue类限制队列的长度
maxSize=queueR.max
puts "队列中最大的长度是：#{maxSize}"
queueR.max=78
maxSize=queueR.max 
puts "修改后的队列中最大的长度是：#{maxSize}"

#2.2>SizedQueue类中的方法使用
require 'thread'
sideQueue=SizedQueue.new(1)
puts sideQueue.empty?
sideQueue.enq(50)
puts "将元素插入队列中后的元素数为：#{sideQueue.size}"
sideQueue.deq(50)
puts "将此元素从队列中删除后的元素为：#{sideQueue.size}"
sideQueue.push(14)
puts "将此元素从队列中插入后的元素数为：#{sideQueue.size}"
sideQueue.pop(14)
puts "将此元素从队列中删除后的元素为：#{sideQueue.size}"
sideQueue.clear
puts "将此元素从队列中清空后的元素为：#{sideQueue.size}"
sideQueue.num_waiting
puts "将队列的线程数为为：#{sideQueue.size}"

#3>ConditionVariable类：只负责同步
require 'thread'
mutex=Mutex.new
conditionVariable=ConditionVariable.new
speed=0
flag=false
police=Thread.new(10) do |value|
   value.times do |i|
    mutex.lock
	if(speed==0)
		puts "警察：保持这个速度继续开车，让我检查一下你的车速是多少"
		conditionVariable.wait(mutex)
	end
    if flag then
		puts "出租车的速度是#{speed}m/s,安全通过了检查"
		puts "-----------------------------"
		flag=false
		speed=0
		conditionVariable.signal
	else
		conditionVariable.wait(mutex)
	end
    mutex.unlock
end
end
people=Thread.new(10) do |value|
   value.times do |i|
	mutex.lock
	if !flag then
		speed=rand(100)
		puts "商家#{speed}"
		flag=true
		conditionVariable.signal
	else
		conditionVariable.wait(mutex)
	end
    mutex.unlock
end
end
people.join
=end
