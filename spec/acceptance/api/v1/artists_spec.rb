require "rails_helper"

resource "Artists" do
  header "Accept", "application/json"

  subject(:response) { json_response_body }

  get "api/v1/artists" do
    let!(:artists) { create_list(:artist, 2) }

    example_request "fethcing all data" do
      explanation "This method fetch all artists"

      expect(response_status).to eq 200
      expect(response).to be
      expect(response.size).to eq 2
    end
  end

  put "api/v1/artists/:id" do
    let!(:artist) { create(:artist) }
    let!(:id) { artist.id }

    parameter :favorite, true, required: true, scope: :artist

    example_request "marking as a favorite", artist: { favorite: true } do
      explanation "This method mark as favorite an artist"

      expect(response_status).to eq 204
      expect(artist.reload.favorite).to eq true
    end
  end
end
