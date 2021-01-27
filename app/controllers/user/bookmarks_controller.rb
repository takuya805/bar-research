class User::BookmarksController < ApplicationController

  def index
    @bookmarks = current_user.bookmarks
  end

  def create
    @shop = Shop.find(params[:shop_id])
    bookmark = current_user.bookmarks.build(shop_id: @shop.id)
    bookmark.save

  end

  def destroy
    @shop = Shop.find(params[:shop_id])
    bookmark = current_user.bookmarks.find_by(shop_id: @shop.id)
    bookmark.destroy
  end
end
