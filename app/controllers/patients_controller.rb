class PatientsController < ApplicationController
  def index
      @patients = Patient.all
      render json: @patients.to_json, status: :ok
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient.to_json, status: :ok
  end

  private
  def patient_params
    params.require(:patient).permit()
  end
end
