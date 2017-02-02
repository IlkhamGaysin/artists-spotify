unless Artist.exists?
  10.times do
    attributes = {
      spotify_id: Faker::Number.number(10).to_s,
      name: Faker::Name.name,
      genres: %w(ambient breakbeat disco techno house).sample(2),
      href: Faker::Internet.url('api.spotify.com/v1/artists'),
      external_urls: {
        'spotify': Faker::Internet.url('open.spotify.com/v1/artists')
      }
    }

    Artist.create(attributes)
  end
end
