class SessionsController < ApplicationController
  def new
  end

  def create
    session[:user_id] = User.find_by(name: params[:name])
  end
end
