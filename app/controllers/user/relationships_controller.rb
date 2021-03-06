class User::RelationshipsController < ApplicationController
  def create
    if params[:tweet_id].present?
      @tweet = Tweet.find(params[:tweet_id])
      @follow = current_user.active_relationships.build(follower_id: @tweet.user.id)
    else
      @user = User.find(params[:user_id])
      @follow = current_user.active_relationships.build(follower_id: @user.id)
    end
    @follow.save
  end

  def destroy
    if params[:tweet_id].present?
      @tweet = Tweet.find(params[:tweet_id])
      @follow = current_user.active_relationships.find_by(follower_id: @tweet.user.id)
    else
      @user = User.find(params[:user_id])
      @follow = current_user.active_relationships.find_by(follower_id: @user.id)
    end
    @follow.destroy
  end
end
