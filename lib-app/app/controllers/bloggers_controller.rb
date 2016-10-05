class BloggersController < ApplicationController
  def index
    @bloggers = Blogger.all
  end

  def new
    @blogger = Blogger.new
  end

  def create
  @blogger = Blogger.create(blogger_params)
  login(@blogger)
  redirect_to @blogger
end

def show
  @blogger = Blogger.find_by_id(params[:id])
end

private

def blogger_params
  params.require(:blogger).permit(:first_name, :last_name, :email, :password)
end
end
