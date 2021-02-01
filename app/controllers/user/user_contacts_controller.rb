class User::UserContactsController < ApplicationController
  def create
    @user_contact = UserContact.new(user_contact_params)
    @user_contact.user_id = current_user.id
    if @user_contact.save
       UserContactMailer.user_mail(@user_contact).deliver
    end
    redirect_to user_path(current_user)
  end

  private
    def user_contact_params
      params.permit(:title, :message)
    end
end
