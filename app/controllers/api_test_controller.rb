class ApiTestController < ApplicationController
  def index
    response = HTTParty.get("http://icd10api.com/?code=#{params[:query]}&apikey=d74d8c79")
    @diagnosis = JSON.parse(response.body)
    render json: @diagnosis.to_json, status: :ok
  end
end
