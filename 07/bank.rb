require "dbi"
dbh=DBI.connect("dbi:Mysql:db_bank:localhost","root","")
dbh['AutoCommit']=false

money=800 #转账金额
factorage=20 #手续费
output="6543216598743210" #转出账户
input="6543216965413254"  #转入账户

begin
    #从转出账户上扣除转账金额
	dbh.do("update cards set money=money-#{money} where card_number='#{output}'")
	#向转入账户上添加转账金额
	dbh.do("update cards set money=money+#{money} where card_number='#{input}'")
	#从转出账户上扣除手续费
	dbh.do("update cards set money=money-#{money} where card_number='#{output}'")
	dbh.commit
rescue Exception=>e
    puts e
	dbh.rollback
end