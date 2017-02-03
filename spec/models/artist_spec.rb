require "rails_helper"

describe Artist do
  describe "validations" do
    subject { FactoryGirl.create(:artist) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:href) }
    it { is_expected.to validate_presence_of(:spotify_id) }
    it { is_expected.to validate_presence_of(:external_urls) }

    it { is_expected.to validate_uniqueness_of(:href) }
    it { is_expected.to validate_uniqueness_of(:spotify_id).case_insensitive }
    it { is_expected.to validate_uniqueness_of(:external_urls) }
  end
end
