puts "Please input number1:"
number1=gets

puts "Please input a operator(+ - * /):"
op=gets

puts "Please input number2:"
number2=gets

case op.chomp
	when "+"
	result=number1.to_i+number2.to_i
	when "-"
	result=number1.to_i-number2.to_i
	when "*"
	result=number1.to_i*number2.to_i
	when "/"
	result=number1.to_i/number2.to_i
end
puts "Result:#{number1.chomp}#{op.chomp}#{number2.chomp}=#{result}"

