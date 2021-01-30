class User::ShopsController < ApplicationController

  def search
  end

  def index
    if params[:category_id] == []
    word = params[:word]
    search = params[:search]
    @shops = Shop.all.search(search, word)
    else
      @category = Category.find(params[:category_id])
      @shops  = @category.shops
    end
  end

  def show
    @shop = Shop.find(params[:id])
    @review = Review.new
    @reviews = @shop.reviews
    gon.shop = @shop
  end
end
