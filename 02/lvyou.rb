month=8
if((1..3)===month)
	infos="春天"
	elsif ((4..6)===month)
		infos="夏天"
		elsif ((7..9)===month)
			infos="秋天"
			elsif ((10..12)===month)
				infos="冬天"
end
puts infos
case infos
	when "春天"
	puts "不冷不热啊"
	when "夏天"
	puts "好热啊"
	when "秋天"
	puts "凉爽啊"
	when "冬天"
	puts "好冷啊"
end
