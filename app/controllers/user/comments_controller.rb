class User::CommentsController < ApplicationController

  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = current_user.comments.new(comment_params)
    comment.score = Language.get_data(comment_params[:comment])
    comment.tweet_id = tweet.id
    comment.save
    redirect_to tweet_path(id: tweet)
  end

  def destroy
    comment = Comment.find_by(id: params[:id], tweet_id: params[:tweet_id])
    comment.destroy
    redirect_to tweet_path(id: params[:tweet_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
