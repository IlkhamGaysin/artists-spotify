unless Artist.exists?
  10.times do
    attributes = FactoryBot.attributes_for(:artist)
    Artist.create(attributes)
  end
end
