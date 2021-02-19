class User::FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites.page(params[:page]).order(created_at: :desc).per(9)
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    favorite = current_user.favorites.build(tweet_id: @tweet.id)
    favorite.save
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    favorite = current_user.favorites.find_by(tweet_id: @tweet.id)
    favorite.destroy
  end
end
