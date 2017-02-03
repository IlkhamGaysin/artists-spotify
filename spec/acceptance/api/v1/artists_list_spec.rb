require "rails_helper"

resource "Artists List" do
  header "Accept", "application/json"

  subject(:body) { json_response_body }

  get "/api/v1/artists" do
    let!(:artists) { create_list(:artist, 2) }

    example_request "Fetching artists" do
      explanation "This method fetchs all collection of artists."

      expect(body).to be
      expect(body.size).to eq 2
      expect(response_status).to eq 200
    end
  end
end
