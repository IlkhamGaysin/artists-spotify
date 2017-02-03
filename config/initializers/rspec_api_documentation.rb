if defined? RspecApiDocumentation
  RspecApiDocumentation.configure do |config|
    config.format = :html
    config.docs_dir = Rails.root.join("doc", "api", "v1")
    config.request_headers_to_include = ["Accept", "X-Auth-Token"]
    config.response_headers_to_include = ["Content-Type"]
    config.curl_host = "http://#{Rails.application.config.host}"
    config.curl_headers_to_filter = ["Cookie", "Host", "Content-Type", "Origin"]
    config.keep_source_order = true
  end
end
