class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
        has_one_attached :avatar
        has_many :tweets
        has_many :likes, dependent: :destroy

        with_options presence: true do
          validates :name
          validates :encrypted_password
          validates :avatar
          validates :email
        end
end
