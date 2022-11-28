FactoryBot.define do
  factory :video do
    title { Faker::Movie.title }
    category
  end
end
