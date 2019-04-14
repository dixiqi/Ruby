fp="ReadFile.rb"
file=File.new(fp)
lines=file.readlines
file.close
i=0
while i<lines.length do
	puts "#{i} : #{lines[i]}"
	i+=1
end