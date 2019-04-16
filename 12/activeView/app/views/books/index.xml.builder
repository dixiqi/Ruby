xml = Builder::XmlMarkup.new
xml.instruct! :xml, :version=>"1.0", :encoding=>"utf-8"
xml.books do
  #遍历从控制器中传递的数据
  @books.each do |abook|
  	#创建book子节点
    xml.book(:id=>abook.id) do
      #创建book的name子节点
      xml.name(abook.name)
      #创建book的price子节点
      xml.price(abook.price)
      #创建book的count子节点
      xml.count(abook.count)
      #创建book的content子节点
      xml.content(abook.content)
    end
  end  
end
