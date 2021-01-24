class User::FavoritesController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.build(review_id: params[:review_id])
    favorite.review_id = @review.id
    favorite.save
  end

  def destroy
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.build(id: params[:id], review_id: params[:review_id])
    favorite.review_id = @review.id
    favorite.destroy
  end
end
