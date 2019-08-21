
class FindsController < ApplicationController
  def index
    response = RestClient::Request.execute(
      method: :get,
      url: 'localhost:3001/v1/locations',
      headers: {}
    )
    @locations = JSON.parse(response)
  end

  def create
    RestClient.post "localhost:3001/v1/locations",
    {name: 'Burger King', place: 'Oregon', content: 'Organic farm to table chicken fries with balsamic vinnegrete'}
    redirect_to finds_path
  end

  # def delete
  #   RestClient.delete(
  #     url: "localhost:3001/v1/locations/21".
  #     headers: {}
  #   )
  #   redirect_to finds_path
  # end

end
