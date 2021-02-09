# frozen_string_literal: true

require 'rails_helper'
RSpec.describe UserContact, "モデルに関するテスト", type: :model do
  user = FactoryBot.create(:user)

  describe 'モデルのテスト' do
    it "有効なユーザーの問い合わせの場合は保存されるか" do
      expect(FactoryBot.build(:user_contact, user_id: user.id)).to be_valid
    end
  end
  context "空白のバリデーションチェック" do
    it "タイトルが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user_contact = UserContact.new(title: '', message: 'hoge')
      expect(user_contact).to be_invalid
      expect(user_contact.errors[:title]).to include("can't be blank")
    end
     it "メッセージが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      user_contact = UserContact.new(title: 'hoge', message: '')
      expect(user_contact).to be_invalid
      expect(user_contact.errors[:message]).to include("can't be blank")
    end
  end
end