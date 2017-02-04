require "rails_helper"

resource "Filter artists" do
  header "Accept", "application/json"

  let!(:artist_1) { create(:artist, favorite: true, genres: ["ambient"]) }
  let!(:artist_2) { create(:artist, genres: ["house"]) }
  let!(:artist_3) { create(:artist, genres: ["deep"]) }

  get "/api/v1/filters/artists" do
    let(:artists) { [artist_1, artist_2, artist_3] }

    example_request "Fetching default collection" do
      explanation %(This method fetchs all artists
                    when there is no filter parameter.)

      expect(response_body).to be_artists_representation(artists, exclude_keys: %w(favorite id))
      expect(response_status).to eq 200
    end
  end

  get "/api/v1/filters/artists" do
    let(:artists) { [artist_1] }
    let(:favorite) { true }

    parameter :favorite, true

    example_request "Filtering by favorited" do
      explanation "This method filters only favorited artists."

      expect(response_body).to be_artists_representation(artists, exclude_keys: %w(favorite id))
      expect(response_status).to eq 200
    end
  end

  get "/api/v1/filters/artists" do
    let(:artists) { [artist_2] }
    let(:genres) { ["house"] }

    parameter :genres, ["house"]

    example_request "Filtering by genres" do
      explanation "This method filters artists only by genres passed."

      expect(response_body).to be_artists_representation(artists, exclude_keys: %w(favorite id))
      expect(response_status).to eq 200
    end
  end
end
