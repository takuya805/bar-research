class User::ShopsController < ApplicationController
  def search
    @reviews = Review.all.last(6)
    shop_review = Review.group(:shop_id)
    shop_score = {}
    shop_review.each do |review|
      shop_score[review.shop_id] = review.shop.avg_score
    end
    @all_ranks = Shop.find(Review.group(:shop_id).order('avg(star) desc').limit(3).pluck(:shop_id))
  end

  def index
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @shops = @category.shops.page(params[:page]).order(created_at: :desc).per(10)
      return
    end
    @shops = Shop.search_by_keyword(params[:search],
                                    params[:word]).page(params[:page]).order(created_at:
                                    :desc).per(10)
  end

  def show
    @shop = Shop.find(params[:id])
    @review = Review.new
    @reviews = @shop.reviews.page(params[:page]).order(created_at: :desc).per(5)
    gon.shop = @shop
  end
end
