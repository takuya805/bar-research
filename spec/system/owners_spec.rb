# frozen_string_literal: true

require 'rails_helper'
 describe 'ユーザーのテスト' do
  let!(:owner) { FactoryBot.create(:owner) }
  describe 'トップ画面(owner_homes_top_path)のテスト' do
    before do
      visit owner_homes_top_path
    end
    context '表示の確認' do
      it 'トップ画面(owner_homes_top_path)に新規登録へのリンクが表示されているか' do
        expect(page).to have_link "", href: new_owner_registration_path
      end
      it 'トップ画面(owner_homes_top_path)にログインへのリンクが表示されているか' do
         expect(page).to have_link "", href: new_owner_session_path
      end
      it 'トップ画面(owner_homes_top_path)にゲストログインへのリンクが表示されているか' do
        expect(page).to have_link "", href: owners_guest_sign_in_path
      end
      it 'owner_homes_top_pathが"/"であるか' do
        expect(current_path).to eq('/owner/homes/top')
      end
    end
  end
  describe '新規登録(new_owner_registration_path)のテスト' do
     before do
      visit new_owner_registration_path
    end
    context '新規登録に関するテスト' do
      it '新規登録に成功しサクセスメッセージが表示されるか' do
      fill_in 'Name', with: owner.name
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Password', with: owner.password
      fill_in 'Password confirmation', with: owner.password
      click_button 'Sign up'
      expect(page).to have_content 'successfully'
      end
      it '新規登録に失敗する' do
        click_button 'Sign up'
        expect(page).to have_content 'error'
        expect(current_path).to eq('/owners')
      end
    end
  end
  describe 'ログイン(new_owner_session_path)のテスト' do
    before do
      visit new_owner_session_path
    end
    context 'ログインに関するテスト' do
      it 'ログインに成功しサクセスメッセージが表示されるか' do
        fill_in 'Email', with: owner.email
        fill_in 'Password', with: owner.password
        click_button 'Log in'
        expect(page).to have_content 'successfully'
      end
        it 'ログインに失敗する' do
        click_button 'Log in'
        expect(page).to have_content 'Invalid'
        expect(current_path).to eq('/owners/sign_in')
      end
    end
  end
  describe 'ユーザー退会のテスト' do
    before do
      visit new_owner_session_path
      fill_in 'Email', with: owner.email
      fill_in 'Password', with: owner.password
      click_button 'Log in'
      visit owner_shops_path
    end
    context '表示の確認' do
      it '退会ボタンが表示される' do
        expect(page).to have_link '退会する'
      end
    end
    # context '退会処理に関するテスト' do
    #   it '退会後のリダイレクト先は正しいか' do
    #     find('a[data-method=delete]').click
    #     expect(current_path).to eq root_path
    #   end
    # end
  end
end