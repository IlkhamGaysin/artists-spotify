require "rails_helper"

resource "Artists" do
  header "Accept", "application/json"

  let!(:artists) { create_list(:artist, 2) }

  subject(:response) { json_response_body }

  get "api/v1/artists" do
    example_request "responds with 200" do
      expect(response_status).to eq 200
      expect(response).to be
      expect(response.size).to eq 2
    end
  end
end
