xml = Builder::XmlMarkup.new(:indent=>2, :margin=>4)
xml.instruct! :xml, :version=>"1.0", :encoding=>"utf-8"
xml.list do
xml.version(:ver=>'0.1') do
  xml.author("somboy")
  xml.maketime(Time.now.strftime("%Y-%m-%d %H:%M:%S") )
  xml.website("www.itzcn.com")
end
  xml.orders do
    @orders.each do |order|
      xml.order(:id=>order.id) do
        xml.name(order.name)
        xml.starttime(order.starttime)
        xml.endtime(order.endtime)
        xml.state(order.state)
      end
    end
  end
end
