# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Category, "モデルに関するテスト", type: :model do

  describe 'モデルのテスト' do
    it "有効なカテゴリーの場合は保存されるか" do
      expect(FactoryBot.build(:category)).to be_valid
    end
  end
  context "空白のバリデーションチェック" do
    it "カテゴリーが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      category = Category.new(category: '')
      expect(category).to be_invalid
      expect(category.errors[:category]).to include("can't be blank")
    end
  end
end