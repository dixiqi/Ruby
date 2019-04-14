=begin
#课本182页  访问文件属性
#提供了File：：Stat类配合File类实现对文件属性的访问
#1>文件操作权限
fp="c:/rubyspace/06/readme.txt"
mode=File.stat(fp).mode #获取文件权限
puts "该文件的访问权限代码为：#{mode}"
File.chmod(01522,fp)#修改文件权限
mode=File.stat(fp).mode
puts "修改后该文件的访问权限代码为：#{mode}"#获取文件权限

#2>检查文件是否存在
fp="c:/rubyspace/06/readme.txt"
exist=FileTest.exist?(fp)
exists=FileTest.exists?(fp)
if(exist)
	puts "exist:文件#{fp}存在"
else
	puts "exist:文件#{fp}不存在"
end
if(exists)
	puts "exists:文件#{fp}存在"
else
	puts "exists:文件#{fp}不存在"
end

#3>查看文件大小
fp="c:/rubyspace/06/readme.txt"
puts "size?="+FileTest.size?(fp).to_s#返回文件大小。如果文件大小为0，则返回nil
puts "zero?="+FileTest.zero?(fp).to_s#如果文件大小为0，返回true；否则返回false
puts "size="+FileTest.size(fp).to_s#返回文件的实际大小

#4>获取与设置文件时间戳
fp="c:/rubyspace/06/readme.txt"
#使用File类的类方法获取三个时间戳
mtime1=File.mtime(fp)#最后一次修改时间
atime1=File.atime(fp)#最后一次读取时间
ctime1=File.ctime(fp)#创建时间

#修改时间戳:修改最后访问时间和最后修改时间
File.utime(Time.now,Time.now,fp)

#使用File类的实例方法获取三个时间戳
file=File.new(fp)
mtime2=file.mtime
atime2=file.atime
ctime2=file.ctime

puts "#{fp}文件的时间戳"
puts "mtime=#{mtime1}"
puts "atime=#{atime1}"
puts "ctime=#{ctime1}"

puts "#{fp}修改后的时间戳"
puts "mtime=#{mtime2}"
puts "atime=#{atime2}"
puts "ctime=#{ctime2}"

#课本186页 读取文件
#1>打开文件
#1.1> 使用File类的new方法打开文件
#使用File类的new方法创建一个对象的时候，就已经打开了指定的文件。不过，以这种方式打开的文件只能被读取。可以传入第二个参数，其称之为模式字符串，它指定将以何种方式打开文件。new方法的第二个参数默认是“r”，表示以只读方式打开文件
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
file=File.new(fp,"r")

#1.2>使用File类的open方法打开文件
#与new方法类似，但是使用open方法还可以给该方法传递一个代码块作为参数

File.open(fp) do |file|
    #file参数即是打开的文件对象
end

#1.3>使用open方法
#y与File类的open方法类似，但该方法在调用时可以同时为其传递一个代码块，也可以使用该方法返回一个文件对象
fp="c:/rubyspace/06/readme.txt"
file=open(fp)
open(fp) do |file|
    #file变量是一个文件对象
end

#2>关闭文件 :使用File类的close方法；还可以使用close_read方法只读模式打开的文件，close_write关闭只写模式打开的文件
fp="c:/rubyspace/06/readme.txt"
file=open(fp) #打开文件
    #对文件进行操作
file.close  #关闭文件

#3>读取文件:使用IO类
#3.1>read方法：从文件对象中读取指定字节数的文本。如果指定字节数大于文件内容长度，将读取到文件结尾。
#格式：read(length,buf),length表示声明读取的文本长度；buf用于保存读取出来的文件内容，可选
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
puts file.read(6)#文件指针随着读取的内容一次次前移
b=""
puts file.read(8,b)
puts b
puts file.read
file.close 

#3.2>移动文件指针:操作读取文件时的文件指针所在的位置
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
puts file.read(5)
puts "指针所在的位置：#{file.pos}"
file.pos=2
puts file.read(5)
puts "指针所在的位置：#{file.pos}"
file.close 

#3.3>readchar方法：从文件对象中读取一个字符
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
puts file.readchar
file.close 

#3.4>readling 方法：从指定的文件读取一行，不过当读到文件末尾时，会引发EOFError异常
   #readlines方法：可以读取文件的所有行，并把所有的内容保存在数组里，数组中的每个元素都是文件中的一行内容
#3.5>gets方法:从指定的文件读取一行,再读取到文件末尾时不会引发异常，而是返回一个nil
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
while line=file.gets
	puts line
end
file.close

#4>使用迭代器读取文件
#4.1>迭代文件中的行：each_line和each，都是依次将文件中的每一行传入代码块，进行迭代
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
file.each do |line|
	puts line
end
file.close

#4.2>按子节迭代文件:each_byte，以字节为单位迭代文件
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp)
file.each_byte do |b|
    print "#{b}  "
end
puts
file.close

#4.3>使用foreach迭代器迭代文件内容：可以以行的形式迭代文件的内容
fp="c:/rubyspace/06/readme.txt"
IO.foreach(fp) do |line|
print "#{line}"
end
puts

#课本192页 写入文件
#print方法：将一行或多行字符串写入文件，并且不换行。可以通过设置“$\”来让每次写入之后增加换行
#puts方法：将一行字符串或多行字符串写入一个文件，每次写完之后自动换行
#putc方法：将一个字符写入一个文件。如果写入一个整数参数，则将该参数转换成字符后写入
#write方法：将一行字符串写入一个文件
#写入文件需要使用写入（w、w+）或者追加（a、a+）模式打开一个文件

#1>写入一个文件：使用w模式打开文件
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp,"w")
$\="\n" #设置执行完print方法自动换行
file.puts("静夜思")
file.write("----------李白")
file.puts("床前明月光")
file.puts("疑是地上霜")
file.print("举头望明月")
file.print("低头思故乡")
file.close

#2>追加文件内容：使用a模式打开文件
fp="c:/rubyspace/06/readme.txt"
file=File.new(fp,"a")
file.puts("诗评：这是一首唐代伟大诗人李白的诗")
file.close

#课本195页 操作文件
#1>删除文件:delete方法和unlink方法用于删除普通文件，如果删除成功，返回删除文件的个数；否则抛出一个Errono：error的异常
fp="c:/rubyspace/06/read.txt"
puts File.unlink(fp)
puts File.delete(fp)

#2>重命名或移动文件
#使用File类的类方法rename就可以实现对文件的重命名，rename方法接受两个字符串作为参数，第一个字符串参数表示原文件名，另一个表示新文件名.
fp1="c:/rubyspace/06/source.txt"
fp2="c:/rubyspace/06/target.txt"
File.rename(fp1,fp2)

#在重命名时，若原文件名和新文件名所指向的不是同一个目录的话，系统会自动将文件重命名并移动到新的目录。
fp1="c:/rubyspace/05/source.txt"
fp2="c:/rubyspace/06/target.txt"
File.rename(fp2,fp1)

#课本197页 操作路径
#1>分析路径：使用File类中的两个类方法：dirname和basename，可以使用这两个方法根据路径获取目录名称和文件名称；
#basename可以设置第二个参数，第二个参数设置的是文件中要截取的后缀，若第二个参数设置为文件的后缀名，则方法返回的将是不加扩展名的文件名称
fp="c:/rubyspace/06/sourcecode.txt"
puts File.dirname(fp)
puts File.basename(fp)
puts File.basename(fp,".txt")

#2>获取绝对路径:使用expand_path类方法，可以获取相对路径对应的绝对路径
fp="c:/rubyspace/06/sourcecode.txt"
puts File.expand_path(fp)

#3>链接路径:名为join的类方法，可以根据用方法调用者提供的字符串生成新的路径
puts File.join("study","coder","ruby","file.txt")

#课本199页 操作目录
#1>获取当前目录
puts Dir.pwd
puts Dir.getwd

#2>改变当前目录：使用Dir类中的chdir类方法，该方法接收一个新目录路径作为参数，执行完以后将当前目录切换到新目录中，如果没有为该方法设置参数，该方法将当前目录切换到当前系统用户所在的目录中
puts Dir.pwd
Dir.chdir("/rubyspace")
puts Dir.pwd
Dir.chdir("c:/")
puts Dir.pwd
Dir.chdir
puts Dir.pwd

#3>遍历目录内容：Dir类中提供了一个foreach类方法来迭代目录内容；也可以通过Dir实例的each方法来迭代目录内容；Dir类还提供了一个entries类方法可以直接通过数组的形式返回所有的目录内容
puts "#{Dir.pwd} 目录中的内容："
Dir.foreach(Dir.pwd) do |item|
    puts item
end
puts "------------------------------"
d=Dir.new(Dir.pwd)
d.each do |item|
    puts item
end
puts "------------------------------"
list=Dir.entries(Dir.pwd)
list.each do |item|
	puts item
end

#4>删除指定目录:三个类方法：delete、rmdir、unlink可以删除指定的目录，删除成功返回0，否则抛出Errno:ENOENT异常；如果目录不为空，抛出Errno:ENOTEMPTY异常
begin
    puts Dir.delete("aa")
	rescue Exception=>e
	puts e.class
end
begin
    puts Dir.rmdir("bb")
	rescue Exception=>e
    puts e.class
end
begin
    puts Dir.unlink("cc")
	rescue Exception=>e
    puts e.class
end
=end

