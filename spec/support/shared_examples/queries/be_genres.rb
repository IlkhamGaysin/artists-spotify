RSpec.shared_examples "filtering by genres" do
  let!(:params) { { genres: %w[house] } }

  let!(:artist_1) { create :artist, genres: %w[house] }
  let!(:artist_2) { create :artist, genres: %w[house ambient] }
  let!(:artist_3) { create :artist, genres: %w[folk ambient] }

  it "returns related to genres records" do
    expect(result.size).to eq(2)
    expect(result).to match_array([artist_1, artist_2])
    expect(result).not_to include(artist_3)
  end
end
