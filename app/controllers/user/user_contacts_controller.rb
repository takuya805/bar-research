class User::UserContactsController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = User.find(params[:user_id])
    @user_contact = UserContact.new(user_contact_params)
    @user_contact.user_id = @user.id
    if @user_contact.save
      UserContactMailer.user_mail(@user_contact).deliver
      redirect_to user_path(current_user)
    else
      @user = User.find(params[:user_id])
      render 'user/users/show'
    end
  end

  private

  def user_contact_params
    params.require(:user_contact).permit(:title, :message)
  end
end
