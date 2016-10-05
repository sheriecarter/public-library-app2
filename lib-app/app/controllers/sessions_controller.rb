class SessionsController < ApplicationController
  def new
    @blogger = Blogger.new
  end

  def create
      user_params = params.require(:user).permit(:email, :password)
      # confirm that email/password combination is correct
      @blogger = Blogger.confirm(blogger_params)
      if @blogger
        login(@blogger)
         flash[:notice] = "Successfully logged in."
        redirect_to @blogger
      else
         flash[:error] = "Incorrect email or password."
        redirect_to login_path
      end
    end

    def destroy
      session[:user_id] = nil
     flash[:notice] = "Successfully logged out."        # <--- Add this flash notice
     redirect_to root_path

    end
end
