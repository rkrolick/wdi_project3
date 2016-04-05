class VitalsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @visit = @patient.visits.find(params[:visit_id])
    @vitals = @visit.vitals.find(params[:id])
    render json: @vitals.to_json, status: :ok
  end
end
