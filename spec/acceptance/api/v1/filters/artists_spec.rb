require "rails_helper"

resource "Filter Artists" do
  header "Accept", "application/json"

  subject(:body) { json_response_body }

  let!(:artist_1) { create(:artist, favorite: true, genres: ["ambient"]) }
  let!(:artist_2) { create(:artist, genres: ["house"]) }
  let!(:artist_3) { create(:artist, genres: ["deep"]) }

  get "/api/v1/filters/artists" do
    example_request "Fetching artists" do
      explanation %Q{This method fetchs all artists
                      when there is no filter parameter.}

      expect(body).to be
      expect(body.size).to eq 3
      expect(response_status).to eq 200
    end
  end

  get "/api/v1/filters/artists" do
    parameter :favorite, true

    let(:favorite) { true }

    example_request "filtering by favorited" do
      explanation "This method filters only favorited artists."

      expect(body).to be
      expect(body.size).to eq 1
      expect(response_status).to eq 200
    end
  end

  get "/api/v1/filters/artists" do
    parameter :genres, ["house"]

    let(:genres) { ["house"] }

    example_request "filtering by genres" do
      explanation "This method filters artists only by genres passed."

      expect(body).to be
      expect(body.size).to eq 1
      expect(response_status).to eq 200
    end
  end
end
