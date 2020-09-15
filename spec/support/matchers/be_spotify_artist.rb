RSpec::Matchers.define :be_spotify_artist do |expected|
  match do |actual|
    expect(actual).to have_attributes(expected.to_h.except(:id).deep_stringify_keys)
  end
end
