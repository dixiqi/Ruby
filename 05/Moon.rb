class Moon
	def moon
		puts "但愿人长久，千里共婵娟。"
	end
    alias new_moon moon
	def moon
		puts "身游银阙珠宫，俯瞰积气蒙蒙"
	end
end
noon=Moon.new
puts "为月亮重新定义的别名是："
puts noon.moon
puts defined? noon.moon