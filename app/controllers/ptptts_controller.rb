class PtpttsController < ApplicationController
  def index
    get_visit
    @ptptts = @visit.ptptts.all
    render json: @ptptts.to_json, status: :ok
  end

  def show
    get_visit
    @ptptt = @visit.ptptts.find(params[:id])
    render json: @ptptt.to_json, status: :ok
  end

  def create
    get_visit
    @ptptt = @visit.ptptts.new(ptptt_params)
    if @ptptt.save
      render json: @ptptt.to_json, status: :created
    else
      render json: @ptptt.errors, status: :unprocessable_entity
    end
  end

  def update
    get_visit
    @ptptt = @visit.ptptts.find(params[:id])
    if @ptptt.update(ptptt_params)
      render json: @ptptt.to_json, status: :ok
    else
      render json: @ptptt.errors, status: :unprocessable_entity
    end
  end

  def destroy
    get_visit
    @ptptt = @visit.ptptts.find(params[:id])
    @ptptt.destroy
    render json: {status: "success"}, status: :ok
  end

  private
  def ptptt_params
    params.require(:visit).permit(
      :pt,
      :aptt,
      :inr
    )
  end

  def get_visit
    @patient = Patient.find(params[:patient_id])
    @visit = @patient.visits.find(params[:visit_id])
  end

end
