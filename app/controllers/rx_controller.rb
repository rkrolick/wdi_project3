class RxsController < ApplicationController
  def index
    get_visit
    @rxs = @visit.rxs.all
    render json: @rxs.to_json, status: :ok
  end

  def show
    get_visit
    @rx = @visit.rxs.find(params[:id])
    render json: @rx.to_json, status: :ok
  end

  def create
    get_visit
    @rx = @visit.rxs.new(rx_params)
    if @rx.save
      render json: @rx.to_json, status: :created
    else
      render json: @rx.errors, status: :unprocessable_entity
    end
  end

  def update
    get_visit
    @rx = @visit.rxs.find(params[:id])
    if @rx.update(rx_params)
      render json: @rx.to_json, status: :ok
    else
      render json: @rx.errors, status: :unprocessable_entity
    end
  end

  def destroy
    get_visit
    @rx = @visit.rxs.find(params[:id])
    @rx.destroy
    render json: {status: "success"}, status: :ok
  end

  private
  def rx_params
    params.require(:visit).permit(
    :drugName,
    :dosage,
    :route,
    :frequency
    )
  end
end
