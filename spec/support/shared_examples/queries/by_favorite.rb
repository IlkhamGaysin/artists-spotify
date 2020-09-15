RSpec.shared_examples "filtering by favorite" do
  let!(:params) { { favorite: true } }

  let!(:artist_1) { create :artist, favorite: true }
  let!(:artist_2) { create :artist, favorite: false }

  it "returns favorit records" do
    expect(result.size).to eq(1)
    expect(result).to eq([artist_1])
    expect(result).not_to include(artist_2)
  end
end
