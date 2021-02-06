class User::ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @shop = Shop.find(params[:shop_id])
    @review = current_user.reviews.build(review_params)
    @review.shop_id = @shop.id
    if @review.save
       redirect_to shop_path(@shop), notice: 'successfull created'
    else
      @reviews = @shop.reviews.page(params[:page]).order(created_at: :desc).per(5)
       render 'user/shops/show'
    end
  end

  def destroy
   review = Review.find_by(id: params[:id], shop_id: params[:shop_id], user_id: params[:user_id])
   if review.destroy
      redirect_to shop_path(params[:shop_id]), notice: 'successfull destroyed'
   else
     @shop = Shop.find(params[:shop_id])
     @review = current_user.reviews
     render 'user/shops/show'
   end
  end

  private
    def review_params
      params.require(:review).permit(:shop_id, :user_id, :title, :post, :star, :image)
    end
end
