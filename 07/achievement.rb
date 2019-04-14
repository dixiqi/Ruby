require "dbi"

begin
    dbh=DBI.connect("dbi:Mysql:db_oa:localhost","root","")
	
	sth=dbh.prepare("select name from achievements where saleroom>50000000")
	sth.execute
	while row=sth.fetch_hash
		puts "#{row["name"]}"
	end
rescue Mysql::Error=>e
    puts "Error Number: #{e.error}"
	puts "Error Message: #{e.error}"
	puts "Error State: #{e.sqlstate}" if e.respond_to?("sqlstate")
ensure
    dbh.disconnect if dbh
end