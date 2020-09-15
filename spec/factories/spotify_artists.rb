FactoryBot.define do
  factory :spotify_artist, class: "OpenStruct" do
    id { Faker::Number.unique.number(digits: 10).to_s }
    name { Faker::Name.name }
    genres { 10.times.map { Faker::Music.genre } }
    href { Faker::Internet.url(host: "api.spotify.com/v1/artists") }
    external_urls do
      { spotify: Faker::Internet.url(host: "open.spotify.com/v1/artists") }
    end
  end
end
