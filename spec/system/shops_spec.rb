# frozen_string_literal: true

require 'rails_helper'
 describe '店舗のテスト' do
  let!(:category) { FactoryBot.create(:category) }
  let!(:owner) { FactoryBot.create(:owner) }
  let!(:shop) {FactoryBot.create(:shop)}
  describe '店舗登録(new_owner_shop_path)のテスト' do
    before do
      visit new_owner_session_path
      fill_in 'Email', with: owner.email
      fill_in 'Password', with: owner.password
      click_button 'Log in'
      visit new_owner_shop_path
    end
    context '登録処理に関するテスト' do
      it '店舗登録後のいダイレクト先は正しいか' do
        find("#shop_category_id").find("option[value='1']").select_option
        fill_in 'shop[name]', with: shop.name
        fill_in 'shop[postcode]', with: shop.postcode
        fill_in 'shop[address]', with: shop.address
        fill_in 'shop[station]', with: shop.station
        fill_in 'shop[phone]', with: shop.phone
        fill_in 'shop[open_time]', with: shop.open_time
        select '火曜日', from: 'shop[holiday]'
        select '3,000円以下', from: 'shop[budget]'
        fill_in 'shop[seat]', with: shop.seat
        fill_in 'shop[explain]', with: shop.explain
        click_button '登録する'
        expect(current_path).to eq owner_shops_path
      end
    end
  end
  describe '店舗編集(edit_owner_shop_path)のテスト' do
    before do
      visit edit_owner_shop_path(owner)
    end
      context '店舗編集テスト' do
      it '店舗登録後のいダイレクト先は正しいか' do
        expect(page).to have_field "ショットバー"
        have_field 'shop[name]'
        have_field  'shop[postcode]'
        have_field  'shop[address]'
        have_field  'shop[station]'
        have_field  'shop[phone]'
        have_field  'shop[open_time]'
        have_field 'shop[holiday]'
        have_field  'shop[budget]'
        have_field  'shop[seat]'
        have_field  'shop[explain]'
        click_button '登録する'
        expect(current_path).to eq owner_shops_path
      end
    end
  end
 end