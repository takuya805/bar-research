class User::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites.page(params[:page]).order(created_at: :desc).per(9)
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
