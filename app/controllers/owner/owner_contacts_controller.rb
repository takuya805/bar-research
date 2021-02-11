class Owner::OwnerContactsController < ApplicationController
  before_action :authenticate_owner!
  layout 'owner'
  def create
    @owner_contact = OwnerContact.new(owner_contact_params)
    @owner_contact.owner_id = current_owner.id
    if @owner_contact.save
      UserContactMailer.owner_mail(@owner_contact).deliver
      redirect_to owner_shops_path(current_owner), notice: "Your message send successful!!"
    else
      @shops = current_owner.shops.page(params[:page]).order(created_at: :desc).per(5)
      render 'owner/shops/index'
    end
  end

  private

  def owner_contact_params
    params.permit(:title, :message)
  end
end
