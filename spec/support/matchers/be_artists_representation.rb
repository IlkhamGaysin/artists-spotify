RSpec::Matchers.define :be_artists_representation do |artists, exclude_keys: []|
  match do |response|
    expect(response).to be_present
    expect(response).to be_json_eql(artists.to_json).at_path("artists").excluding(*exclude_keys)
  end

  failure_message do |_actual|
    "expected that #{response} would be eql to #{artists}"
  end
end
