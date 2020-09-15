RSpec.shared_examples "filtering by name" do
  let(:params) { { name: "Bob" } }

  let!(:artist_1) { create :artist, name: "Bob" }
  let!(:artist_2) { create :artist, name: "Lilly" }

  it "returns artists called Bob" do
    expect(result.size).to eq(1)
    expect(result).to match_array([artist_1])
  end
end
