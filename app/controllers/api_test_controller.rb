class ApiTestController < ApplicationController
  def index
    @diagnosis = "You made it! You're query was #{params[:query]}"
    render json: @diagnosis.to_json, status: :ok
  end
end
