#课本32页 范围
#a=0..59
#b=60...100
#c=b.to_a
#puts "a范围中最小的是:"+(a.min).to_s
#puts "b范围中最大的是："+(b.max).to_s
#puts "a范围中最后一个数字是："+(a.end).to_s
#puts "b范围中第一个数字是："+(b.first).to_s
#puts b.include?100
#puts "数组c的长度是："+(c.size).to_s


#课本33页 迭代器小试
#count=10..20
#print count.reject{|i|i<15}
#puts "\n"
#count.each do|i|
#puts "当前元素为："+i.to_s
#end



#课本34页 符号
#1>
#dcy="我是你的粉丝啊"
#ly=:dcy
#puts ly==:"dcy"#ly是否等于字符串“dcy”对应的符号对象
#def fangfa
	#puts "我记得你"
	#end
#show=:fangfa
#puts show==:"fangfa"
#2>
#dcy="我是你的粉丝啊"
#ly=:"我是你的粉丝啊"
#puts dcy.to_sym==ly
#puts ly.to_s==dcy
#3>
#dcy="我是你的粉丝啊"
#ly=:dcy
#dcyandly=%s{dcy}
#puts dcyandly==ly

#课本37页乘方运算
#p=2
#puts (p**3).to_s#表示以2为底以3为次方的成乘方运算
#puts p**=2

#课本38页位运算符
#puts 10|12 #一个为1即为1
#puts 10^12 #相同（全0或全1）才为1
#puts 10&12 #全1才为1
#puts 10<<2 #向左移位，高位溢出，低位补零
#puts 10>>2 #向右移位
#puts ~8    #正数：对初始值的二进制码进行运算：0->1,1->0(包括符号位)，得到最终结果的补码，要想取得最终结果的原码还需取补码。（负数的反码：符号位为1不变，其余0->1,1->0;补码：反码加1）
#puts ~-5   #负数：对初始值的二进制码进行补码运算，之后对补码的二进制码进行运算：0->1,1->0(包括符号位)，的最终结果的补码。（正数的原码、补码、反码均相同）

#课本41页比较运算符
#puts 5<=>8#左小于右为-1，左大于右为1，左等于右为0
#puts 8<=>5
#puts 5<=>5
#puts (1..10)===8#运算符左边是普通对象时，等于==运算符；当左边是Range对象时，且右边的对象包含在该Range内时，返回true，否则返回false；
#puts "我是谁"==="谁是我"

#课本43页 三目运算符
#1>
#score=600
#scoreStr="得出的结果是：",score<600? "考上复旦，仍需努力！":"考上复旦也不能放松啊！"
#puts scoreStr
#2>
#statusY=1
#statusW=0
#puts statusY=1? "已审核":"未审核"
#puts statusW=0? "未审核":"已审核"

#课本46页 表达式
#score=569
#res=if score>600
#	score.to_s+"分，考上复旦没问题"
#	else
#		score.to_s+"分，我很惭愧，落榜了。\n没考上复旦真的很遗憾，没关系，从头再来！"
#       end
#puts res

#课本47页 赋值
#1>并行赋值-1
#c,d="我是变量c","我是变量d"
#puts "交换前的变量c是："+c,"交换前的变量d是："+d
#c,d=d,c
#puts "交换后的变量c是："+c,"交换后的变量d是："+d
#1>并行赋值-2
#tianqi=["春天","夏天","秋天","冬天"]
#daibiao=["cyr代表温暖的春天","wdc代表炎热的夏天","wz代表凉爽的秋天","yyl代表寒冷的冬天"]
#a,b=tianqi
#puts "a代表的是"+a,"b代表的是"+b
#a,*b=daibiao#左边需要赋值的以*做前缀，表示所有对应该变量的值及后面的值组成一个数组，并赋给这个变量
#puts "a代表的是"+a,"数组b代表的是:",b#数组前不用加号
#a,b="风雨哈佛路",*tianqi#右边的值以*做前缀，表示会阿静这个数组拆开，按元素的相应位置进行并行赋值
#puts a,b
#2>嵌套赋值
#tianqi=["春天","夏天","秋天","冬天"]
#b,(c,d),e=tianqi
#puts "输出的b是"+b.to_s,"输出的c是"+c.to_s,"输出的d是："+d.to_s,"输出的e是"+e.to_s
#b,(c,*d),e="春天",["夏天","不冷不热天","秋天"],"冬天"
#puts "b="+b.to_s,"c="+c.to_s,d,"e="+e.to_s
#b,(c,d),e="春天",["夏天","不冷不热天","秋天"],"冬天"
#puts "b="+b.to_s,"c="+c.to_s,"d="+d.to_s,"e="+e.to_s

=begin
#课本51页 条件语句
#1> if语句
str=1
if (str==1)
	puts "1月代表的是春天"
	end
month=2
mothInfo="春天"#if修饰句
if (month<3)
	puts "2月份是："+mothInfo
	end 

#2> unless语句
a=2
unless a**5==32 then
puts "a的五次方不是32"
else
	puts "a的五次方是32"
end

#3>case语句
month=8
case month
	when 1..3
	puts "该月份属于春天"
	when 4..6
	puts "该月份属于夏天"
	when 7..9
	puts "该月份属于秋天"
	when 10..12
	puts "该月份属于冬天"
end

#课本57页 循环语句
#1>while 语句
row=1
while (row<=9) do
	row=row+1
	puts "第"+(row-1).to_s+"次被打印的是："+row.to_s
end

#2>until 语句
row=0
flh=["red","orange","yellow","green","qing","blue","gray"]
until (row>=7) do
    flh.each do |h|
	    row=row+1
		puts "王母娘娘的第"+row.to_s+"个女儿的名字是："+h.to_s
    end
end

#3> for in 语句
shiren=["A","B","C","D","E"]#遍历数组元素
for shiju in shiren do
	puts shiju
end
Angle={"闭月"=>"貂蝉拜月","羞花"=>"贵妃观花","沉鱼"=>"西施浣纱","落雁"=>"昭君出塞"}#遍历hash对象
for key,value in Angle do
	puts key+""+value
end

#4>迭代器
names=["琵琶语","东风破","小酒窝","长睫毛"]
names.each do |name|
    puts name
end


#课本62页跳转语句
#1> break语句
i=0;
loop{
	puts "i的值是："+i.to_s
	i+=1
	if (i>=3)
	  break#跳出整个循环，如果实在嵌套循环中则是跳出这个嵌套循环而不是整个循环
	end
}

#2> next 语句
music=1
while (music<=5) do
	if (music==5) 
		music+=1
		next#跳出本次循环，进入下次循环，而不是中断整个循环
	end
    puts "《简爱》这首歌已经循环了"+music.to_s+"次"
	music+=1
	yinyue=1
	while (yinyue<=3) do
		if (yinyue==2)
			yinyue+=1
			next #！！！执行next语句前，必须对变量进行更新，否则造成死循环
		end
	    puts "《曲终人散》这首歌已经播放了"+yinyue.to_s+"次"
        yinyue+=1
    end
end

#3>redo语句
i=1;
while (i<=5) do
	if(i==5)
		i+=1
		redo#跳出本次循环，不用检查循环条件是否成立就进入下一次循环。！！！执行redo语句前，必须对变量进行更新，否则造成死循环
	end
    puts "这是第"+i.to_s+"次循环"
	i+=1
end

#4>return 语句
def search (weathername)
	weathers=["春天","夏天","秋天","冬天"]
	    for weather in weathers do 
			puts weather
			if (weather==weathername) then
				return true
			else
				return false
			end
		end
end
	if search("春天") then
		puts "这个月是春天"
	else
		puts "这个月不是春天"
	end
=end
