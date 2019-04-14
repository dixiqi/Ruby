info={
	"name"=>"123456",
    "pwd"=>"pwd123456",
    "sex"=>"男",
    "age"=>32

}
info.each do |key,value|
	puts key.to_s+": "+value.to_s
end
