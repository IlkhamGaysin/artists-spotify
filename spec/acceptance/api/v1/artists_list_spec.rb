require "rails_helper"

resource "Artists list" do
  header "Accept", "application/json"

  get "/api/v1/artists" do
    let!(:artists) { create_list(:artist, 2) }

    example_request "Fetching collection" do
      explanation "This method fetchs all collection of artists."

      expect(response_body).to be_artists_representation(artists, exclude_keys: %w(favorite id))
      expect(response_status).to eq 200
    end
  end
end
