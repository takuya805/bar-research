class User::ReviewsController < ApplicationController

  def create
    @shop = Shop.find(params[:shop_id])
    @review = current_user.reviews.build(review_params)
    @review.shop_id = @shop.id
    @review.save
    redirect_to shop_path(@shop), notice: 'successfull created'
  end

  def destroy
   review = Review.find_by(id: params[:id], shop_id: params[:shop_id], user_id: params[:user_id])
   review.destroy
   redirect_to shop_path(params[:shop_id])
  end

  private
    def review_params
      params.require(:review).permit(:shop_id, :user_id, :title, :post, :star, :image)
    end
end
