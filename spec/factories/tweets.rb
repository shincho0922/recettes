FactoryBot.define do
  factory :tweet do
    name       {"test"}
    ingredient {"test"}
    make       {"test"}
    genre_id   {2}
    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
