=begin
#课本73页 字符串
#1>合并字符串
a="我爱"
b="我家"
c=a+b#将两个或两个以上的字符串连在一起
puts c

a<<b#为已有字符串变量永久性的添加另一个字符串
puts a 
puts b

puts "#{a}#{b}"  #嵌入字符串变量，然后返回新的字符串
puts "#{a}#{b}"*3 #乘法运算，复制出相应倍数字符串的连接

#2> 替换字符串
str="我爱你"#声明字符串
a=str
str.replace("我不爱你")#替换字符串内容
puts str
puts a

#3>复制字符串
str="我喜欢你"
puts str.dup#只复制字符串的内容
puts str.clone#除了复制字符串内容，同时继承了特殊方法、污染、冻结等信息

#4>改变字符串
str="  abcDeTRYP  \n"
puts str.capitalize #将字符串首字母转换为小写
str="  AbcDeTRYP  \n"
puts str.upcase #将字符串所有字母转换为大写
str="  AbcDeTRYP  \n"
puts str.downcase #将字符串中所有字母转换为小写
str="  AbcDeTRYP  \n"
puts str.swapcase #将字符串中大写字母转换为小写，小写字母转为大写
str="  AbcDeTRYP  \n"
puts str.strip #去掉字符串中的首尾空格
str="  AbcDeTRYP  \n"
puts str.lstrip #去掉字符串中左边的空格
str="  AbcDeTRYP  \n"
puts str.rstrip#去掉字符串中右边的空格
str="  AbcDeTRYP  \n"
puts str.chop #删除字符串中的最后一个字符
str="  AbcDeTRYP  \n"
print str.chomp #删除字符串中最后的换行符
str="  AbcDeTRYP  \n"
puts str.reverse #将字符串反转过来

#5>获取字符串
str="www.baidu.com"
puts str[2] #获取索引为2的字符
puts str[7].ord  #获取索引为7的字符的ASCII码
puts str[4,5]   #获取子字符串，从索引为4 的字符开始长度为5的子字符串

#5>比较字符串
str1="wwwbaiducom"
str2="www.baidu.com"
if str1==str2
	puts "这两个字符串内容相等"
else
		puts "这两个字符串内容不相等"
end
puts 'str1'.eql?'str2' #比较时两个字符串并不一定是相同的对象

puts 'a'.ord
puts 'b'.ord
puts 'b'<=>'a'#比较大小：返回1表示左边的字符串大；返回0表示两个字符串内容相等；返回-1表示右边的字符串大
if("a">"b")
	puts "a大于b"
else
	puts "a小于b"
end

#课本82页 数组
#1> %表示方法
str=%W{上海\s自来水\s来自\s海上}#使用%W{...}时会对转义字符和特殊字符进行替换，%w{...}则不会
str2=%w{上海\s自来水\s来自\s海上}
puts str
puts str2
#2>截取和合并字符串
food_1=["大米","小米","黑米"]
food_2=["香蕉","葡萄"]
food_1.concat(food_2)#将数组food_2的元素合并到数组food_1中
puts "输出food_1的所有元素"
puts food_1
puts "输出food_2的所有元素"
puts food_2

#课本85页 类型转换
class Computer
	def initialize(name)#定义构造函数
		@name=name
	end
    def to_s#定义to_s函数
		"电脑型号：#{@name}"
	end
end
computer=Computer.new("方正")#实例化Computer类
puts computer.to_s#调用to_s方法
puts computer#输出对象
=end