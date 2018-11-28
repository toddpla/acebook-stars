FactoryBot.define do
  factory :user do
    # name { Faker::Name.name }
    email { Faker::Internet.email }
    # password { Faker::Internet.password(min_length = 6, max_length = 10) }
    password { "password" }
    # password_confirmation { "password" }
  end
end
