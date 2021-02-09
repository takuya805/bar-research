# frozen_string_literal: true

require 'rails_helper'
RSpec.describe User, "モデルに関するテスト", type: :model do

  describe 'モデルのテスト' do
    it "有効なユーザーの場合は保存されるか" do
      expect(FactoryBot.build(:user)).to be_valid
    end
  end
  context "空白のバリデーションチェック" do
    it "名前が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user = User.new(name: '', email: 'hoge', password: 'hoge')
      expect(user).to be_invalid
      expect(user.errors[:name]).to include("can't be blank")
    end
     it "メールが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user = User.new(name: 'hoge', email: '', password: 'hoge')
      expect(user).to be_invalid
      expect(user.errors[:email]).to include("can't be blank")
    end
     it "パスワードが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user = User.new(name: 'hoge', email: 'hoge', password: '')
      expect(user).to be_invalid
      expect(user.errors[:password]).to include("can't be blank")
    end
  end
end