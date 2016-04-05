class CbcsController < ApplicationController
  def index
    get_visit
    @cbcs = @visit.cbcs.all
    render json: @cbcs.to_json, status: :ok
  end

  def show
    get_visit
    @cbc = @visit.cbcs.find(params[:id])
    render json: @cbc.to_json, status: :ok
  end

  def create
    get_visit
    @cbc = @visit.cbcs.new(cbc_params)
    if @cbc.save
      render json: @cbc.to_json, status: :created
    else
      render json: @cbc.errors, status: :unprocessable_entity
    end
  end

  def update
    get_visit
    @cbc = @visit.cbcs.find(params[:id])
    if @cbc.update(cbc_params)
      render json: @cbc.to_json, status: :ok
    else
      render json: @cbc.errors, status: :unprocessable_entity
    end
  end

  def destroy
    get_visit
    @cbc = @visit.cbcs.find(params[:id])
    @cbc.destroy
    render json: {status: "success"}, status: :ok
  end

  private
  def cbc_params
    params.require(:visit).permit(
      :wbc,
      :hgb,
      :hct,
      :plt
    )
  end
end
