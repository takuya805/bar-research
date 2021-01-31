class User::ShopsController < ApplicationController

  def search
  end

  def index
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @shops  = @category.shops
      return
    end
    @shops = Shop.search_by_keyword(params[:search
      ], params[:word])
  end

  def show
    @shop = Shop.find(params[:id])
    @review = Review.new
    @reviews = @shop.reviews
    gon.shop = @shop
  end
end
