class BmpsController < ApplicationController
  def index
    get_visit
    @bmps = @visit.bmps.all
    render json: @bmps.to_json, status: :ok
  end

  def show
    get_visit
    @bmp = @visit.bmps.find(params[:id])
    render json: @bmp.to_json, status: :ok
  end

  def create
    get_visit
    @bmp = @visit.bmps.new(bmp_params)
    if @bmp.save
      render json: @bmp.to_json, status: :created
    else
      render json: @bmp.errors, status: :unprocessable_entity
    end
  end

  def update
    get_visit
    @bmp = @visit.bmps.find(params[:id])
    if @bmp.update(bmp_params)
      render json: @bmp.to_json, status: :ok
    else
      render json: @bmp.errors, status: :unprocessable_entity
    end
  end

  def destroy
    get_visit
    @bmp = @visit.bmps.find(params[:id])
    @bmp.destroy
    render json: {status: "success"}, status: :ok
  end

  private
  def bmp_params
    params.require(:visit).permit(
      :na,
      :k,
      :cl,
      :bicarb,
      :bun,
      :cr,
      :glucose
    )
  end
end
