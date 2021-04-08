class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '洋食' },
    { id: 3, name: '中華' },
    { id: 4, name: '和食' },
  ]
  include ActiveHash::Associations
  has_many :tweets

  end
