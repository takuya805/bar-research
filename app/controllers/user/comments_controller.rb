class User::CommentsController < ApplicationController

  def create
    tweet = Tweet.find(params[:tweet_id])
    comment = current_user.comments.new(comment_params)
    comment.score = Language.get_data(comment_params[:comment])
    comment.tweet_id = tweet.id
    if comment.save
      redirect_to tweet_path(id: tweet), notice: 'コメントしました'
    else
      @tweet = Tweet.find(params[:tweet_id])
      @comment = Comment.new(comment_params)
      @comments = @tweet.comments
      render 'user/tweets/show'
    end
  end

  def destroy
    comment = Comment.find_by(id: params[:id], tweet_id: params[:tweet_id])
    if comment.destroy
      redirect_to tweet_path(id: params[:tweet_id]), notice: 'コメントを削除しました'
    else
      @tweet = Tweet.find(params[:id])
      @comment = Comment.new
      @comments = @tweet.comments
      render 'user/tweets/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment)
  end
end
