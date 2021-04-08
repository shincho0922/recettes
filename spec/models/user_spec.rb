require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録ができる時' do
        it '必要な情報が記載されていれば新規登録できる' do
          expect(@user).to be_valid
        end
      end

      context '新規登録ができない時' do
        it 'nameが空では登録できないこと' do
          @user.name = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Name can't be blank")
        end
    
        it 'emailが空では登録できないこと' do
          @user.email = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end
    
        it 'passwordが空では登録できないこと' do
          @user.password = ''
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank")
        end

        it 'avatarが空では登録できないこと' do
          @user.avatar = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Avatar can't be blank")
        end
      end
    end
  end
end
