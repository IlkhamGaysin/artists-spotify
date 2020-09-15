require "rails_helper"

describe ArtistsSeeder do
  let(:spotify_artist_1) { build(:spotify_artist) }
  let(:spotify_artist_2) { build(:spotify_artist) }
  let(:spotify_artists)  { [spotify_artist_1, spotify_artist_2] }

  let(:seeder) { described_class.new(spotify_artists) }

  describe "#persist!" do
    context "when artists with such spotify ids already exist in database" do
      let!(:artist_1) { create(:artist, spotify_id: spotify_artist_1.id) }
      let!(:artist_2) { create(:artist, spotify_id: spotify_artist_2.id) }

      it "doesn't persist them" do
        expect(Artist.ids).to contain_exactly(artist_1.id, artist_2.id)

        seeder.persist!

        expect(Artist.ids).to contain_exactly(artist_1.id, artist_2.id)
      end

      context "when there is error during saving record" do
        let(:fake_logger) { instance_spy("ActiveSupport::Logger") }

        before do
          allow(Artist).to receive(:exists?).and_return(false)
          allow(Rails).to receive(:logger).and_return(fake_logger)
        end

        it "logs message to Rails.logger" do
          seeder.persist!

          expect(fake_logger).to have_received(:info).with("Couldn't save the artist" \
            " #{spotify_artist_1.id} message: Validation failed: Spotify has already been taken").once
          expect(fake_logger).to have_received(:info).with("Couldn't save the artist" \
            " #{spotify_artist_2.id} message: Validation failed: Spotify has already been taken").once
        end
      end
    end

    context "when there are no artists in database with such spotify ids" do
      let(:artist_1) { Artist.find_by(spotify_id: spotify_artist_1.id) }
      let(:artist_2) { Artist.find_by(spotify_id: spotify_artist_2.id) }

      # rubocop:disable Style/MethodCalledOnDoEndBlock
      it "changes Artist count" do
        expect do
          seeder.persist!
        end.to change(Artist, :count).from(0).to(2)
      end
      # rubocop:enable Style/MethodCalledOnDoEndBlock

      it "persists them to database" do
        seeder.persist!

        expect(artist_1).to be_spotify_artist(spotify_artist_1)
        expect(artist_2).to be_spotify_artist(spotify_artist_2)
      end
    end
  end
end
