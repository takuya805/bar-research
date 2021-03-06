class User::PlansController < ApplicationController

  def show
    @plan = Plan.find(params[:id])
  end

  def create
    @plan = current_user.plans.build(plan_params)
    @plan.save
    redirect_to user_path(current_user)
  end

  def destroy
     @plan = Plan.find(params[:id])
     @plan.destroy
     redirect_to user_path(current_user)
  end

  private
    def plan_params
      params.require(:plan).permit(:othershop, :start_time, :memo)
    end
end
