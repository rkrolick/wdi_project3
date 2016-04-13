class DxApiController < ApplicationController
  def index
    # NHO: this works, but would recommend moving this code into a `DxApi` model, if you feel there is more data you need
    # Also benefits would be you could call that model in the Dx controller instead of the need for seperate route / controller
    response = HTTParty.get("http://icd10api.com/?code=#{params[:query]}&apikey=#{Figaro.env.dx_api_key}")
    @diagnosis = JSON.parse(response.body)
    render json: @diagnosis.to_json, status: :ok
  end
end
