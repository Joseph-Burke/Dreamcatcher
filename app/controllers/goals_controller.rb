class GoalsController < ApplicationController
  
  def new
    @goal = Goal.new
  end
  
  def create
    @user = User.find(session[:user_id])
    @goal = @user.goals.build(goal_params)
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :description)
  end

end