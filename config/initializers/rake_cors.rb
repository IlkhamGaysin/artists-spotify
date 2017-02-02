Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # Allow requests from domains:
    # e.g. origins("api.example.com", "next.example.com")
    #
    origins(*ENV.fetch("ALLOW_REQUESTS_FROM", "*").split(","))

    resource(
      "*",
      headers: :any,
      methods: %i(get post put patch delete options head)
    )
  end
end
