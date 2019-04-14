class MyException<Exception  
end
def method (num)
  puts "50除以#{num}的结果是：#{50/num}"  
end
begin
  method 0
  rescue ZeroDivisionError
  raise MyException,"出现异常，除数不能为0，请重新运行程序。"
end