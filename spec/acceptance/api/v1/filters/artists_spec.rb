require "rails_helper"

resource "Filter Artists" do
  header "Accept", "application/json"

  let!(:artist_1) { create(:artist, favorite: true, genres: ["ambient"]) }
  let!(:artist_2) { create(:artist, genres: ["house"]) }
  let!(:artist_3) { create(:artist, genres: ["deep"]) }

  subject(:response) { json_response_body }

  get "api/v1/filters/artists" do
    example_request "fetching all stored data" do
      explanation "This method fetchs all stored artists."

      expect(response_status).to eq 200
      expect(response).to be
      expect(response.size).to eq 3
    end
  end

  get "api/v1/filters/artists" do
    parameter :favorite, true

    example_request "filtering by favorited", favorite: true do
      explanation "This method filters only favorited artists."

      expect(response_status).to eq 200
      expect(response.size).to eq 1
    end
  end

  get "api/v1/filters/artists" do
    parameter :genres, ["house"]

    example_request "filtering by genres", genres: ["house"] do
      explanation "This method filters artists only by genres passed."

      expect(response_status).to eq 200
      expect(response.size).to eq 1
    end
  end
end
