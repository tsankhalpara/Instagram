class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      @user.save
      redirect_to posts_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :fullname, :username, :password)
  end
end
