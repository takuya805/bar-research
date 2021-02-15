# frozen_string_literal: true

require 'rails_helper'
describe 'レビューのテスト' do
  let!(:user) { FactoryBot.create(:user) }
  let!(:shop) { FactoryBot.create(:shop) }
  let!(:review) { FactoryBot.create(:review) }

  describe 'レビュー新規投稿(shop_reviews_path)のテスト' do
    before do
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
      visit shop_path(shop)
    end

    context 'レビュー新規投稿に関するテスト' do
      it 'レビュー投稿後のいダイレクト先は正しいか' do
        fill_in 'review[title]', with: review.title
        attach_file 'review[image]', "#{Rails.root}/spec/factories/no_image.jpg"
        find('#review_star').find("img[alt='5']").click
        #fill_in 'review[star]', with: 5
        fill_in 'review[post]', with: review.post
        click_button '投稿する'
        expect(current_path).to eq shop_path(shop)
      end
    end
  end

 describe 'レビュー新規投稿(shop_reviews_path)のテスト' do
    before do
      visit new_user_session_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
      visit shop_path(shop)
      fill_in 'review[title]', with: review.title
      attach_file 'review[image]', "#{Rails.root}/spec/factories/no_image.jpg"
      find('#review_star', visible: false).set(5)
      #fill_in 'review[star]', with: 5
      fill_in 'review[post]', with: review.post
      click_button '投稿する'
    end
    context '表示の確認' do
      it '削除ボタンが表示される' do
        expect(page).to have_link '削除する'
      end
    end
    context '削除処理に関するテスト' do
      it '削除後のリダイレクト先は正しいか' do
        find('.review-delete a').click
        expect(current_path).to eq shop_path(shop)
      end
    end
  end
end
