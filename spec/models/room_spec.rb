# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Room, "モデルに関するテスト", type: :model do
  describe 'モデルのテスト' do
    it "有効な部屋の場合は保存されるか" do
      expect(FactoryBot.build(:room)).to be_valid
    end
  end
end
