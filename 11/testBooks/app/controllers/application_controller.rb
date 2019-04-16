class ApplicationController < ActionController::Base
  protect_from_forgery
 # before_filter :changeCharset
 # def changeCharset
 #   response.headers["Content-Type"]="text/html; charset=gb2312"
 # end
end
