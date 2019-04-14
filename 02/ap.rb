scores=[90,30,100,70,65,89,52,60]
stu=0
until (stu>=8) do
    scores.each do |score|
	   stu+=1
	   puts "第"+stu.to_s+"个学生的成绩是："+score.to_s
	end
end