class Blogger < ApplicationRecord
   has_secure_password
   def self.confirm(params)
   @blogger = Blogger.find_by({email: params[:email]})
   @blogger ? @blogger.authenticate(params[:password]) : false
 end

end
