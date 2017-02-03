module Helpers
  def json_response_body
    JSON.load(response_body)
  end
end
