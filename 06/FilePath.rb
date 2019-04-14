def getAP(file)
	path=file.path
	File.expand_path(path)
end

fp="FilePath.rb"
file=File.new(fp)
path=getAP(file)
puts path