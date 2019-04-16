xml = Builder::XmlMarkup.new(:indent=>2, :margin=>4)
xml.instruct! :xml, :version=>"1.0", :encoding=>"utf-8"
xml.books do
  xml.book(:id=>'1') do
    xml.name('Ruby On Rails程序开发实战详解')
    xml.author('祝红涛')
    xml.price ('68')
  end
  xml.book(:id=>'2') do
    xml.name('Ruby On Rails完全学习手册')
    xml.author('侯艳书')
    xml.price ('98')
  end
end
