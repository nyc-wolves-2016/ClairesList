class UsersController < ApplicationController
  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
