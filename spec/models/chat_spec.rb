# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Chat, "モデルに関するテスト", type: :model do
  room = FactoryBot.create(:room)
  user = FactoryBot.create(:user)
  describe 'モデルのテスト' do
    it "有効なチャットの場合は保存されるか" do
       expect(FactoryBot.build(:chat, user_id: user.id, room_id: room.id )).to be_valid

    end
  end
  context "メッセージのバリデーションチェック" do
    it "メッセージが空白の場合バリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      chat = Chat.new(message: '')
      expect(chat).to be_invalid
      expect(chat.errors[:message]).to include("can't be blank")
    end
  end
end