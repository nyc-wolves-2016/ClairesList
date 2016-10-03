class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #
    else
      render 'new'
    end
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
