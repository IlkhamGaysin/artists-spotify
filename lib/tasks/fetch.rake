namespace :fetch do
  desc "Run ArtistsFetcher job"
  task artists: :environment do
    ArtistsFetcher.new("query").persist!
  end
end
