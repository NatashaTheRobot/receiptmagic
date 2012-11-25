class UsersController < ApplicationController
  def new
  end
  
  def index
    @users = User.all
      respond_to do |format|
        format.html  # index.html.erb
        format.json  { render :json => @users }
      end
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
end
