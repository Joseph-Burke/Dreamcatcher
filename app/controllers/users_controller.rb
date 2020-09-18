class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name])
    @user.save
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
