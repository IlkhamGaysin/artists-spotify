require "rails_helper"

describe Artist do
  describe "validations" do
    subject(:artist) { FactoryBot.create(:artist) }

    it { expect(artist).to validate_presence_of(:name) }
    it { expect(artist).to validate_presence_of(:href) }
    it { expect(artist).to validate_presence_of(:spotify_id) }
    it { expect(artist).to validate_presence_of(:external_urls) }

    it { expect(artist).to validate_uniqueness_of(:href) }
    it { expect(artist).to validate_uniqueness_of(:spotify_id).case_insensitive }
  end
end
