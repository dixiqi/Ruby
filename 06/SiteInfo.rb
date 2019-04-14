class SiteInfo
	def initialize(title,domainName,ip,email)
		@title=title
		@domainName=domainName
		@ip=ip
		@email=email
	end
    attr_accessor(:title, :domainName, :ip, :email)
end

siteinfo=SiteInfo.new("宇宙0101集团","www.yz0101.com","127.0.0.1","123@yz0101.com")
filePath="siteinfo.txt"
file=File.new(filePath,"w")
file.puts(siteinfo.title)
file.puts(siteinfo.domainName)
file.puts(siteinfo.ip)
file.puts(siteinfo.email)
file.close