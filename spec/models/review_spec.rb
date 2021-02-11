# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Review, "モデルに関するテスト", type: :model do
  user = FactoryBot.create(:user)
  shop = FactoryBot.create(:shop)

  describe 'モデルのテスト' do
    it "有効な投稿内容の場合は保存されるか" do
      expect(FactoryBot.build(:review, user_id: user.id, shop_id: shop.id)).to be_valid
    end
  end

  context "空白のバリデーションチェック" do
    it "タイトルが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      review = Review.new(title: '', post: 'hoge', star: 'hoge')
      expect(review).to be_invalid
      expect(review.errors[:title]).to include("can't be blank")
    end
    it "投稿内容が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      review = Review.new(title: 'hoge', post: '', star: 'hoge')
      expect(review).to be_invalid
      expect(review.errors[:post]).to include("can't be blank")
    end
    it "星点数が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      review = Review.new(title: 'hoge', post: 'hoge', star: '')
      expect(review).to be_invalid
      expect(review.errors[:star]).to include("can't be blank")
    end
  end
end
