# frozen_string_literal: true

require 'rails_helper'
RSpec.describe OwnerContact, "モデルに関するテスト", type: :model do
  owner = FactoryBot.create(:owner)

  describe 'モデルのテスト' do
    it "有効なオーナーの問い合わせの場合は保存されるか" do
      expect(FactoryBot.build(:owner_contact, owner_id: owner.id)).to be_valid
    end
  end
  context "空白のバリデーションチェック" do
    it "タイトルが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      owner_contact = OwnerContact.new(title: '', message: 'hoge')
      expect(owner_contact).to be_invalid
      expect(owner_contact.errors[:title]).to include("can't be blank")
    end
     it "メッセージが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      owner_contact = OwnerContact.new(title: 'hoge', message: '')
      expect(owner_contact).to be_invalid
      expect(owner_contact.errors[:message]).to include("can't be blank")
    end
  end
end