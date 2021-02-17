class User::TweetsController < ApplicationController
   before_action :authenticate_user!

  def index
    @tweets = Tweet.all.page(params[:page]).order(created_at: :desc).per(9)
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comment = Comment.new
    @comments = @tweet.comments
  end

  def mytweet
   @tweet = Tweet.new
   @tweets = current_user.tweets.page(params[:page]).order(created_at: :desc).per(9)
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    @tweet.save
    redirect_to user_mytweets_path(user_id: current_user)
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to user_mytweets_path(user_id: current_user)
  end
  private

    def tweet_params
      params.require(:tweet).permit(:shop, :image, :content)
    end
end
