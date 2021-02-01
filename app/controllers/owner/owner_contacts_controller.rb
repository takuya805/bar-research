class Owner::OwnerContactsController < ApplicationController
  def create
    @owner_contact = OwnerContact.new(owner_contact_params)
    @owner_contact.owner_id = current_owner.id
    if @owner_contact.save
      UserContactMailer.owner_mail(@owner_contact).deliver
    end
    redirect_to owner_shops_path(current_owner)
  end

  private
    def owner_contact_params
      params.permit(:title, :message)
    end
end
