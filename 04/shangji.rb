class Person
	def initialize(name)
		@name=name
	end
    def sayHello(friend)
		puts "Hello,#{friend.name}"
	end
    attr_accessor(:name)
end

p=Person.new("joker zhan")
f=Person.new("peter li")

p.sayHello(f)
f.sayHello(p)