
class FindsController < ApplicationController
  def index
    response = RestClient::Request.execute(
      method: :get,
      url: 'localhost:3001/v1/locations',
      headers: {}
    )
    @locations = JSON.parse(response)
  end

end
