module BooksHelper

  def index_helper books
    html=''
   books.each do |book|
     html+="
  <tr>
    <td width=""60"" align='center'><img name='' src='/images/#{book.id}.jpg' height='80' alt='' /></td>
    <td>【名称】#{book.name}<br />
      【价格】¥ #{book.price}<br />
      【数量】#{book.count} <br /></td>
    <td width='57'> #{link_to '查看', book} <br />
       #{link_to '编辑', edit_book_path(book)} <br />
       #{link_to '删除', book, :confirm => 'Are you sure?', :method => :delete }</td>
  </tr>"
   end
   html
  end

end

