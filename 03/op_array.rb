score_array=["wanghong:100","yuefeng:99","lijialu:98","zhangxiaochun:98","guanshixiao:97"]
score_array[5]="yuxiaoliu:96" #添加数组元素
puts score_array
score_array.unshift("liyunlong:100")#向数组头部添加元素
score_array.push("zhangzhou:95")#向数组尾部添加元素
puts "首尾添加元素之后的数组："
puts score_array
puts "获取前两名的成绩是："
puts score_array[0,2]#截取数组