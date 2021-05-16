FactoryBot.define do
  factory :message do
    content {Faker::Lorem.sentence}
    association :user
    association :room

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/004_FRIENDS.png'), filename: '004_FRIENDS.png' )
    end
  end
end