class Owner::ShopsController < ApplicationController
   layout 'owner'
  def index
    @shops = current_owner.shops
  end

  def new
    @shop = Shop.new
    @categories = Category.all
  end

  def create
    @shop = current_owner.shops.build(shop_params)

    @shop.save
    redirect_to owner_shops_path, notice: "#{@shop.name}の情報を登録しました。"
  end

  def edit
    @shop = current_owner.shops.find_by(id: params[:id])
    @categories = Category.all
  end

  def update
    @shop = current_owner.shops.find_by(id: params[:id])
    @shop.update(shop_params)
    redirect_to owner_shops_path
  end

  def destroy
    @shop = current_owner.shops.find_by(id: params[:id])
    @shop.destroy
    redirect_to owner_homes_top_path
  end

  private
    def shop_params
      params.require(:shop).permit(:category_id, :name, :postcode,
                                   :address, :phone, :station,
                                   :holiday, :budget, :seat, :explain,
                                   :hplink,:booking, :open_time, :close_time, shop_pictures_images: [])
    end
end
