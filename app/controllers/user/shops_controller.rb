class User::ShopsController < ApplicationController

  def search
    @reviews = Review.all.first(6)
  end

  def index
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @shops  = @category.shops.page(params[:page]).order(created_at: :desc).per(10)
      return
    end
    @shops = Shop.search_by_keyword(params[:search], params[:word]).page(params[:page]).order(created_at: :desc).per(10)
  end

  def show
    @shop = Shop.find(params[:id])
    @review = Review.new
    @reviews = @shop.reviews.page(params[:page]).order(created_at: :desc).per(5)
    gon.shop = @shop
  end
end
