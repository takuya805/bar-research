class User::PlansController < ApplicationController
  before_action :authenticate_user!
  def show
    @plan = Plan.find(params[:id])
  end

  def create
    @plan = current_user.plans.build(plan_params)
    if @plan.save
      redirect_to user_path(current_user), notice: "予定を登録しました"
    else
      @user = current_user
      @tweets = @user.tweets
      @plans  = current_user.plans
      @user_contact = UserContact.new
      render 'user/users/show'
    end
  end

  def destroy
     @plan = Plan.find(params[:id])
     if @plan.destroy
      redirect_to user_path(current_user), notice: "予定を削除しました"
     else
      @user = User.find(params[:id])
      @tweets = @user.tweets
      @plans  = current_user.plans
      @user_contact = UserContact.new
      render 'user/users/show'
     end
  end

  private
    def plan_params
      params.require(:plan).permit(:start_time,:shop_name, :memo)
    end
end
