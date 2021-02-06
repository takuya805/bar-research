class Owner::ShopsController < ApplicationController
  before_action :authenticate_owner!
   layout 'owner'

  def index
    @shops = current_owner.shops.page(params[:page]).order(created_at: :desc).per(5)
    @owner_contact = OwnerContact.new
  end

  def show
    @shop = Shop.find(params[:id])
    @reviews = @shop.reviews.page(params[:page]).order(created_at: :desc).per(8)
  end

  def new
    @shop = Shop.new
    @categories = Category.all
  end

  def create
    @shop = current_owner.shops.build(shop_params)
      if @shop.save
        redirect_to owner_shops_path, notice: "Registration was successful your bar"
      else
        @categories = Category.all
        render 'owner/shops/new'
      end
  end

  def edit
    @shop = current_owner.shops.find_by(id: params[:id])
    @categories = Category.all
  end

  def update
    @shop = current_owner.shops.find_by(id: params[:id])
    if @shop.update(shop_params)
      redirect_to owner_shops_path, notice: "Update was successful your bar"
    else
      @categories = Category.all
      render 'owner/shops/edit'
    end
  end

  def destroy
    @shop = current_owner.shops.find_by(id: params[:id])
    if @shop.destroy
     redirect_to owner_shops_path, notice: "Delete was successful your bar"
    else
      @shops = current_owner.shops
      render 'owner/shops/index'
    end
  end

  private
    def shop_params
      params.require(:shop).permit(:category_id, :name, :postcode,
                                   :address, :phone, :station,
                                   :holiday, :budget, :seat, :explain,
                                   :hplink,:booking, :open_time, :close_time, shop_pictures_images: [])
    end
end
