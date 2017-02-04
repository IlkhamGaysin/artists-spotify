if defined? JsonSpec
  JsonSpec.configure do
    exclude_keys "created_at", "updated_at"
  end
end
