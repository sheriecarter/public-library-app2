module SessionsHelper
  def login(user)
   session[:blogger_id] = blogger.id
   @current_blogger = blogger
 end

 def current_blogger
   @current_blogger ||= Blogger.find_by_id(session[:blogger_id])
 end

 def logout
   @current_blogger = session[:blogger_id] = nil
 end

end
