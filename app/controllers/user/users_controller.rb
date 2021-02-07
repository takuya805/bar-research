class User::UsersController < ApplicationController
  before_action :authenticate_user!

  def review
    @reviews = current_user.reviews.page(params[:page]).order(created_at: :desc).per(9)
  end

  def show
    @user = User.find(params[:id])
    @user_contact = UserContact.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user), notice: "You have updated user successfully"
    else
      render 'user/users/edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_path, notice: 'See you again'
    else
      render 'user/users/show'
    end
  end

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

  private

    def user_params
      params.require(:user).permit(:name, :image, :introduction)
    end
end
