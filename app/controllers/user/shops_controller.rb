class User::ShopsController < ApplicationController

  def search
  end

  def index
    word = params[:word]
    search = params[:search]
    @shops = Shop.all.search(search, word)
  end

  def show
    @shop = Shop.find(params[:id])
  end
end
