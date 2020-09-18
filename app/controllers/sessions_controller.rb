class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_id] = User.find(params[:user][:name])
  end
end
