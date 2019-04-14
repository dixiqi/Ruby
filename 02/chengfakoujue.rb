puts "九九乘法表如下："
for x in 1..9
	for y in 1..x
		if x==y
			print y,"*",x,"=",x*y," "
			puts ""
		else
			print y,"*",x,"=",x*y," "
		end
	end
end