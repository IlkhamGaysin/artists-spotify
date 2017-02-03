require "rails_helper"

describe ArtistsSeeder do
  let(:artist_1) { instance_double(RSpotify::Artist) }
  let(:artist_2) { instance_double(RSpotify::Artist) }
  let(:artists) { [artist_1, artist_2] }

  let(:seeder) { described_class.new(artists) }

  describe "#persist!" do
    context "when there are artists in database" do
      it "do not persist" do
        allow(seeder).to receive(:record_exists?).with(artist_1).and_return(true)
        allow(seeder).to receive(:record_exists?).with(artist_2).and_return(true)
        seeder.persist!

        expect(Artist.exists?).to be_falsey
      end
    end
  end
end
