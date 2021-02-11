# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Owner, "モデルに関するテスト", type: :model do
  describe 'モデルのテスト' do
    it "有効なオーナーの場合は保存されるか" do
      expect(FactoryBot.build(:owner)).to be_valid
    end
  end

  context "空白のバリデーションチェック" do
    it "名前が空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      owner = Owner.new(name: '', email: 'hoge', password: 'hoge')
      expect(owner).to be_invalid
      expect(owner.errors[:name]).to include("can't be blank")
    end
    it "メールが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      owner = Owner.new(name: 'hoge', email: '', password: 'hoge')
      expect(owner).to be_invalid
      expect(owner.errors[:email]).to include("can't be blank")
    end
    it "パスワードが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      owner = Owner.new(name: 'hoge', email: 'hoge', password: '')
      expect(owner).to be_invalid
      expect(owner.errors[:password]).to include("can't be blank")
    end
  end
end
