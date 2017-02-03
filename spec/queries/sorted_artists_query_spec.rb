require "rails_helper"

describe SortedArtistsQuery do
  describe "#all" do
    subject(:all) { described_class.new(params).all }

    let(:params) { Hash.new }

    context "without filtering" do
      let!(:artist_1) { create :artist, name: "Bob" }
      let!(:artist_2) { create :artist, name: "Lilly" }

      it "returns all artists" do
        expect(all.size).to eq(2)
        expect(all).to match_array([artist_1, artist_2])
      end
    end

    context "by name" do
      let(:params) do
        { name: "Bob" }
      end

      let!(:artist_1) { create :artist, name: "Bob" }
      let!(:artist_2) { create :artist, name: "Lilly" }

      it "returns artists called Bob" do
        expect(all.size).to eq(1)
        expect(all).to match_array([artist_1])
      end
    end

    context "by genres" do
      let!(:params) do
        { genres: %w(house) }
      end

      let!(:artist_1) { create :artist, genres: %w(house) }
      let!(:artist_2) { create :artist, genres: %w(house ambient) }
      let!(:artist_3) { create :artist, genres: %w(folk ambient) }

      it "returns related to genres records" do
        expect(all.size).to eq(2)
        expect(all).to match_array([artist_1, artist_2])
        expect(all).not_to include(artist_3)
      end
    end

    context "by favorites" do
      let!(:params) do
        { favorite: true }
      end

      let!(:artist_1) { create :artist, favorite: true }
      let!(:artist_2) { create :artist, favorite: false }

      it "returns favorit records" do
        expect(all.size).to eq(1)
        expect(all).to eq([artist_1])
        expect(all).not_to include(artist_2)
      end
    end
  end
end
