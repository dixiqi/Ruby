math_score={
      "wanghong"=>100,
	  "yuefeng"=>99,
	  "lijialu"=>98,
	  "zhangxiaochun"=>98,
	  "guanshixiao"=>97
}
puts "这里面记录了"+math_score.size.to_s+"个学生的数学成绩"
puts "使用each迭代器输出每个学生的成绩："
math_score.each do |key,value|
      puts key.to_s+": "+value.to_s
end