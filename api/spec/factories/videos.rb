FactoryBot.define do
  factory :video do
    title { Faker::Movie.title }
    category

    file {
      Rack::Test::UploadedFile.new(
        Rails.root.join('spec/fixtures/files/valid_video.mp4'),
        'video/mp4'
      )
    }
  end
end
