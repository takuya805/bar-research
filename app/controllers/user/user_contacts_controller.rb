class User::UserContactsController < ApplicationController
  def create
    @user_contact = UserContact.new(user_contact_params)
    @user_contact.user_id = current_user.id
    @user_contact.save
    redirect_to user_path(current_user)
  end

  private
    def user_contact_params
      params.permit(:title, :message)
    end
end
