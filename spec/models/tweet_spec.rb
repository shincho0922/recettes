require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe '#create' do
    before do
      @tweet = FactoryBot.build(:tweet)
    end

    describe 'Tweet投稿機能' do
      context 'Tweet投稿ができる時' do
        it '必要な情報が記載されていれば新規登録できる' do
          expect(@tweet).to be_valid
        end
      end

      context 'Tweet投稿ができない時' do
        it 'imageが空では投稿できない' do
          @tweet.image = nil
          @tweet.valid?
          expect(@tweet.errors.full_messages).to include("Image can't be blank") 
        end
        it 'ingredientが空では投稿できない' do
          @tweet.ingredient = ""
          @tweet.valid?
          expect(@tweet.errors.full_messages).to include("Ingredient can't be blank") 
        end
        it 'makeが空では投稿できない' do
          @tweet.make = ""
          @tweet.valid?
          expect(@tweet.errors.full_messages).to include("Make can't be blank") 
        end
        it 'genre_idが空では投稿できない' do
          @tweet.genre_id = ""
          @tweet.valid?
          expect(@tweet.errors.full_messages).to include("Genre can't be blank") 
        end
        it 'genre_idが1では投稿できない' do
          @tweet.genre_id = 1
          @tweet.valid?
          expect(@tweet.errors.full_messages).to include("Genre must be other than 1") 
        end
      end
    end
  end
end
