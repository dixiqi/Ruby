module FatherEyes
def fEyes
	puts "Father的眼睛是双眼皮"
	end
end
module SonEyes
def SonEyes.fEyes#重写FatherEyes模块中的fEyes
	puts "巧了，儿子的眼睛也是双眼皮啊，当然了有其父必有其子嘛！"
	end
end
class Eyes
	include FatherEyes
	end
eyes=Eyes.new
eyes.fEyes
puts SonEyes.fEyes