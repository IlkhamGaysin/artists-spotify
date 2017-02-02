class ArtistsFetcher
  attr_reader :filter_params

  def initialize(filter_params)
    @filter_params = filter_params
  end

  def all
    RSpotify::Artist.search(filter_params)
  end
end
