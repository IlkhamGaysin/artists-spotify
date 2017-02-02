namespace :fetch do
  desc "Run ArtistsFetcher job"
  task artists: :environment do
    # I guessed that 'query' is supposed to be hardcoded by acceptance criteria

    collection = ArtistsFetcher.new("query").all
    ArtistsSeeder.new(collection).persist!
  end
end
