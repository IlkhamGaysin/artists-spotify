unless Artist.exists?
  10.times do
    attributes = FactoryGirl.attributes_for(:artist)
    Artist.create(attributes)
  end
end
