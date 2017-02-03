require "rails_helper"

resource "Update artist" do
  header "Accept", "application/json"

  subject(:body) { json_response_body }

  put "/api/v1/artists/:id" do
    let!(:artist) { create(:artist) }
    parameter :favorite, true, required: true, scope: :artist

    let(:favorite) { true }
    let(:id) { artist.id }

    example_request "Marking as favorite" do
      explanation "This method marks as favorite specified in :id artist."

      expect(response_status).to eq 204
      expect(artist.reload.favorite).to eq true
    end
  end
end
