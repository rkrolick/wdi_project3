class DxsController < ApplicationController
  def index
    get_visit
    @dxs = @visit.dxs.all
    render json: @dxs.to_json, status: :ok
  end

  def show
    get_visit
    @dx = @visit.dxs.find(params[:id])
    render json: @dx.to_json, status: :ok
  end

  def create
    get_visit
    @dx = @visit.dxs.new(dx_params)
    if @dx.save
      render json: @dx.to_json, status: :created
    else
      render json: @dx.errors, status: :unprocessable_entity
    end
  end

  def update
    get_visit
    @dx = @visit.dxs.find(params[:id])
    if @dx.update(dx_params)
      render json: @dx.to_json, status: :ok
    else
      render json: @dx.errors, status: :unprocessable_entity
    end
  end

  def destroy
    get_visit
    @dx = @visit.dxs.find(params[:id])
    @dx.destroy
    render json: {status: "success"}, status: :ok
  end

  private
  def dx_params
    params.require(:visit).permit(
      :api_name,
      :code,
      :description
    )
  end
end
