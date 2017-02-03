require "rails_helper"

describe ArtistsFetcher do
  let(:filter_params) { "query" }
  let(:fetcher) { described_class.new(filter_params) }

  let(:artist_1) { instance_double(RSpotify::Artist) }
  let(:artist_2) { instance_double(RSpotify::Artist) }

  describe "#all" do
    subject(:artists) { fetcher.all }

    context "when there are parameters passed" do
      it "returns collection" do
        allow(RSpotify::Artist).to receive(:search).and_return([artist_1, artist_2])

        expect(artists).to match_array([artist_1, artist_2])
      end
    end

    context "when there is no response at all" do
      it "returns empty array" do
        allow(RSpotify::Artist).to receive(:search).and_return([])
        expect(artists).to eq([])
      end
    end
  end
end
