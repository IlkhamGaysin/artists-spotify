module Helpers
  def json_response_body
    JSON.parse(response_body)
  end
end
