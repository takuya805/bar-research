class User::FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
  end

  def create
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.build(review_id: @review.id)
    favorite.save
  end

  def destroy
    @review = Review.find(params[:review_id])
    favorite = current_user.favorites.find_by(review_id: @review.id)
    favorite.destroy
  end
end
