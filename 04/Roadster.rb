class Roadster
	def init
		@brand="BYD"
		@color="yellow"
		@weight="1800kg"
		@F_zero="210km/h"
	end
    
	attr :brand, false
	attr_accessor :color
	attr_reader :weight, :F_zero
end
def showCar(car)
	puts "=================================="
	puts "这辆车的品牌是： "+car.brand
	puts "这辆车的颜色是： "+car.color
	puts "这辆车的最高时速是： "+car.F_zero
	puts "这辆车的车体重量是： "+car.weight
end

roadster=Roadster.new
roadster.init
showCar(roadster)
roadster.color="red"
showCar(roadster)