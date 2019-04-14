class Counter
	def Add(m,n)
		m+n
	end

    def Substract(m,n)
		m-n
	end

    def Ride(m,n)
		m*n
	end

    def Divide(m,n)
		m/n
	end
end

c=Counter.new

puts "8+4=#{c.Add(8,4)}"
puts "8-4=#{c.Substract(8,4)}"
puts "8*4=#{c.Ride(8,4)}"
puts "8/4=#{c.Divide(8,4)}"