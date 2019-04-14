class Find
	def self.post
		puts "使用的地址为http://www.baidu.com"
	end
    def self.method_missing pd
		puts "地址出错，请检查....出错地址为http://www"
	end
end
puts Find.post
puts Find.show