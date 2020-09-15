require "rails_helper"

describe FilteredArtistsQuery do
  describe "#all" do
    subject(:result) { described_class.new(params).all }

    let(:params) { {} }

    context "when params is empty" do
      let!(:artist_1) { create :artist, name: "Bob" }
      let!(:artist_2) { create :artist, name: "Lilly" }

      it "returns all artists" do
        expect(result.size).to eq(2)
        expect(result).to match_array([artist_1, artist_2])
      end
    end

    context "when name param is present" do
      it_behaves_like "filtering by name"
    end

    context "when genres param is prsent" do
      it_behaves_like "filtering by genres"
    end

    context "when favorite param is present" do
      it_behaves_like "filtering by favorite"
    end
  end

  describe "#by_name" do
    subject(:result) { described_class.new(params).by_name }

    it_behaves_like "filtering by name"
  end

  describe "#by_genres" do
    subject(:result) { described_class.new(params).by_genres }

    it_behaves_like "filtering by genres"
  end

  describe "#by_favorite" do
    subject(:result) { described_class.new(params).by_favorite }

    it_behaves_like "filtering by favorite"
  end
end
