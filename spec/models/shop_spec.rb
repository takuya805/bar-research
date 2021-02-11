# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Shop, "モデルに関するテスト", type: :model do
  owner = FactoryBot.create(:owner)
  category = FactoryBot.create(:category)
  describe 'モデルのテスト' do
    it "有効な店舗の場合は保存されるか" do
      expect(FactoryBot.build(:shop, owner_id: owner.id, category_id: category.id)).to be_valid
    end
  end

  context "名前のバリデーションチェック" do
    it "名前が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: '', postcode: 'hoge', address: 'hoge', station: 'hoge', phone: 'hoge',
                      holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge', open_time: 'hoge',
                      close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:name]).to include("can't be blank")
    end
    it "郵便番号が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: '', address: 'hoge', station: 'hoge', phone: 'hoge',
                      holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge', open_time: 'hoge',
                      close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:postcode]).to include("can't be blank")
    end
    it "住所が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: '', station: 'hoge', phone: 'hoge',
                      holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge', open_time: 'hoge',
                      close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:address]).to include("can't be blank")
    end
    it "駅が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: '', phone: 'hoge',
                      holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge', open_time: 'hoge',
                      close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:station]).to include("can't be blank")
    end
    it "電話番号が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge', phone: '',
                      holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge', open_time: 'hoge',
                      close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:phone]).to include("can't be blank")
    end
    it "休日が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge',
                      phone: 'hoge', holiday: '', budget: 1, seat: 'hoge', explain: 'hoge',
                      open_time: 'hoge', close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:holiday]).to include("can't be blank")
    end
    it "予算が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge',
                      phone: 'hoge', holiday: 2, budget: '', seat: 'hoge', explain: 'hoge',
                      open_time: 'hoge', close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:budget]).to include("can't be blank")
    end
    it "座席が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge',
                      phone: 'hoge', holiday: 2, budget: 1, seat: '', explain: 'hoge',
                      open_time: 'hoge', close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:seat]).to include("can't be blank")
    end
    it "説明が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge',
                      phone: 'hoge', holiday: 2, budget: 1, seat: 'hoge', explain: '',
                      open_time: 'hoge', close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:explain]).to include("can't be blank")
    end
    it "開店時間が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge',
                      phone: 'hoge', holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge',
                      open_time: '', close_time: 'hoge')
      expect(shop).to be_invalid
      expect(shop.errors[:open_time]).to include("can't be blank")
    end
    it "閉店時間が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      shop = Shop.new(name: 'hoge', postcode: 'hoge', address: 'hoge', station: 'hoge',
                      phone: 'hoge', holiday: 2, budget: 1, seat: 'hoge', explain: 'hoge',
                      open_time: 'hoge', close_time: '')
      expect(shop).to be_invalid
      expect(shop.errors[:close_time]).to include("can't be blank")
    end
  end
end
