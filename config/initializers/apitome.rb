Apitome.setup do |config|
  # This determines where the Apitome routes will be mounted. Changing this to '/api/documentation' for instance would
  # allow you to browse to http://localhost:3000/api/documentation to see your api documentation. Set to nil and mount
  # it yourself if you need to.
  config.mount_at = "api/docs/v1"

  # This defaults to Rails.root if left nil. If you're providing documentation for an engine using a dummy application
  # it can be useful to set this to your engines root.. E.g. Application::Engine.root
  config.root = nil

  # This is where rspec_api_documentation outputs the JSON files. This is configurable within RAD, and so is
  # configurable here.
  config.doc_path = "doc/api/v1"

  # The title of the documentation -- If your project has a name, you'll want to put it here.
  config.title = "Artists Spotify API Documentation"

  # The main layout view for all documentation pages. By default this is pretty basic, but you may want to use your own
  # application layout.
  config.layout = "apitome/application"

  # You can provide a 'README' style markdown file for the documentation, which is a useful place to include general
  # information. This path is relative to your doc_path configuration.
  config.readme = "../api.md"

  # Apitome can render the documentation into a single page that uses scrollspy, or it can render the documentation on
  # individual pages on demand. This allows you to specify which one you want, as a single page may impact performance.
  config.single_page = true
end
