class VitalsController < ApplicationController
  def index
    get_visit
    @vitals = @visit.vitals.all
    render json: @vitals.to_json, status: :ok
  end

  def show
    get_visit
    @vital = @visit.vitals.find(params[:id])
    render json: @vital.to_json, status: :ok
  end

  def create
    get_visit
    @vital = @visit.vitals.new(vital_params)
    if @vital.save
      render json: @vital.to_json, status: :created
    else
      render json: @vital.errors, status: :unprocessable_entity
    end
  end

  def update
    get_visit
    @vital = @visit.vitals.find(params[:id])
    if @vital.update(vital_params)
      render json: @vital.to_json, status: :ok
    else
      render json: @vital.errors, status: :unprocessable_entity
    end
  end

  def destroy
    get_visit
    @vital = @visit.vitals.find(params[:id])
    @vital.destroy
    render json: {status: "success"}, status: :ok
  end

  private
  def vital_params
    params.require(:visit).permit(
    :o2Sat,
    :temp,
    :heartRate,
    :systolic,
    :diastolic,
    :respiratoryRate
    )
  end
end
