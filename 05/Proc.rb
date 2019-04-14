def info(pr)
	pr.call
end
pro=Proc.new{
    @name="guotao"
	@age=24
	@expression="he is a honesty boy"
	puts "名字是：#{@name}"
	puts "年龄是:#{@age}"
	puts "描述是:#{@expression}"
}
info(pro)