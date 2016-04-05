class DxApiController < ApplicationController
  def index
    response = HTTParty.get("http://icd10api.com/?code=#{params[:query]}&apikey=#{Figaro.env.dx_api_key}")
    @diagnosis = JSON.parse(response.body)
    render json: @diagnosis.to_json, status: :ok
  end
end
