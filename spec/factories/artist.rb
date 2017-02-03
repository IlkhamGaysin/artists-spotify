FactoryGirl.define do
  factory :artist do
    spotify_id { Faker::Number.number(10).to_s }
    name { Faker::Name.name }
    genres { %w(ambient breakbeat disco techno house).sample(2) }
    href { Faker::Internet.url("api.spotify.com/v1/artists") }
    external_urls do
      { spotify: Faker::Internet.url("open.spotify.com/v1/artists") }
    end
  end
end
