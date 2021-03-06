if defined? RspecApiDocumentation
  RspecApiDocumentation.configure do |config|
    config.format = :json
    config.docs_dir = Rails.root.join("doc", "api", "v1")
    config.request_headers_to_include = %w[Accept X-Auth-Token]
    config.response_headers_to_include = ["Content-Type"]
    config.curl_host = "http://#{Rails.application.config.host}"
    config.curl_headers_to_filter = %w[Cookie Host Content-Type Origin]
    config.keep_source_order = true

    config.define_group :public do |group_config|
      group_config.docs_dir = Rails.root.join("doc", "api", "public")
      group_config.filter = :public
    end
  end
end
