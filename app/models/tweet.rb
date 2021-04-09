class Tweet < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy

  with_options presence: true do
    validates :image
    validates :name
    validates :ingredient
    validates :make
    validates :genre_id, numericality: { other_than: 1 } 
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  def self.search(search)
    if search != ""
      Tweet.where(['name LIKE(?) OR ingredient LIKE(?)', "%#{search}%", "%#{search}%"])
    else
      Tweet.all
    end
  end
  
  def self.searches(id)
    if id != ""
      Tweet.where('genre_id LIKE(?)', "%#{id}%")
    else
      Tweet.all
    end
  end
end
