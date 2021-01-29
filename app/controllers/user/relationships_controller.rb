class User::RelationshipsController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @user = User.find(params[:user_id])
    @follow = current_user.active_relationships.build(follower_id: @user.id)
    @follow.save
  end

  def destroy
    @review = Review.find(params[:review_id])
    @user = User.find(params[:user_id])
    @follow = current_user.active_relationships.find_by(follower_id: @user.id)
    @follow.destroy
  end
end
