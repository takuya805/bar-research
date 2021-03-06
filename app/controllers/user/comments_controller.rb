class User::CommentsController < ApplicationController

  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = current_user.comments.new(comment_params)
    comment.score = Language.get_data(comment_params[:comment])
    comment.tweet_id = tweet.id
    comment.save
    @comments = tweet.comments
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    @comments = tweet.comments
    @comment = Comment.find_by(id: params[:id], tweet_id: params[:tweet_id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
