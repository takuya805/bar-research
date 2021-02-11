# frozen_string_literal: true

require 'rails_helper'

 describe 'ユーザーのテスト' do
  let!(:user) { FactoryBot.create(:user) }
  describe 'トップ画面(root_path)のテスト' do
    before do
      visit root_path
    end
    context '表示の確認' do
      it 'トップ画面(root_path)に新規登録へのリンクが表示されているか' do
        expect(page).to have_link "", href: new_user_registration_path
      end
      it 'トップ画面(root_path)にログインへのリンクが表示されているか' do
         expect(page).to have_link "", href: new_user_session_path
      end
      it 'トップ画面(root_path)にゲストログインへのリンクが表示されているか' do
        expect(page).to have_link "", href: users_guest_sign_in_path
      end
      it 'root_pathが"/"であるか' do
        expect(current_path).to eq('/')
      end
    end
  end
  describe '新規登録(new_user_registration_path)のテスト' do
     before do
      visit new_user_registration_path
    end
    context '新規登録に関するテスト' do
      it '新規登録に成功しサクセスメッセージが表示されるか' do
      fill_in 'Name', with: user.name
      fill_in 'Email', with: Faker::Internet.email
      fill_in 'Password', with: user.password
      fill_in 'Password confirmation', with: user.password
      click_button 'Sign up'
      expect(page).to have_content 'successfully'
      end
      it '新規登録に失敗する' do
        click_button 'Sign up'
        expect(page).to have_content 'error'
        expect(current_path).to eq('/users')
      end
    end
  end
  describe 'ログイン(new_user_session_path)のテスト' do
    before do
      visit new_user_session_path
    end
    context 'ログインに関するテスト' do
      it 'ログインに成功しサクセスメッセージが表示されるか' do
        fill_in 'Email', with: user.email
        fill_in 'Password', with: user.password
        click_button 'Log in'
        expect(page).to have_content 'successfully'
      end
        it 'ログインに失敗する' do
        click_button 'Log in'
        expect(page).to have_content 'Invalid'
        expect(current_path).to eq('/users/sign_in')
      end
    end
  end
describe 'ユーザー編集画面のテスト' do
    before do
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
      visit edit_user_path(user)
    end
    context '表示の確認' do
      it '編集前の名前が表示される' do
        expect(page).to have_field 'user[name]', with: user.name
        expect(current_path).to eq "/users/#{user.id}/edit"
      end
      it '更新ボタンが表示されている' do
        expect(page).to have_button '更新'
      end
    end
    context '更新処理に関するテスト' do
      it '更新後のリダイレクト先は正しいか' do
        fill_in 'user[name]', with: Faker::Lorem.characters(number:5)
        attach_file 'user[image]', "#{Rails.root}/spec/factories/no_image.jpg"
        fill_in 'user[introduction]', with: Faker::Lorem.characters(number:20)
        click_button '更新'
        expect(page).to have_current_path user_path(user)
      end
    end
end
describe 'ユーザー退会のテスト' do
    before do
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
      visit user_path(user)
    end
    context '表示の確認' do
      it '退会ボタンが表示される' do
        expect(page).to have_link 'Quit'
      end
    end
    context '退会処理に関するテスト' do
      it '退会後のリダイレクト先は正しいか' do
         find('.sidefotter a').click
         expect(current_path).to eq root_path
      end
    end
  end


end