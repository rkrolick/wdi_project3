class PatientsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json{ render json: Patient.all }
    end
  end
  def show
    @patient = Patient.find(params[:id])
    render json: @patient.to_json, status: :ok
  end

  def destroy
    Patient.destroy(params[:id])
    render json: {success: true}, status: :ok
  end
  def create
    @patient = Patient.create(patient_params)
    render json: @patient, status: :ok
  end
  private
  def patient_params
    params.require(:patient).permit(:name, :image_url, :cost, :quantity, :country)
  end
end
