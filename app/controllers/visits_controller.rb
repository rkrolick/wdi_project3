class VisitsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
    @visits = @patient.visits.all
    render json: @visits.to_json, status: :ok
  end

  def show
    @patient = Patient.find(params[:patient_id])
    @visit = @patient.visits.find(params[:id])
    render json: @visit.to_json, status: :ok
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @visit = @patient.visits.new(visit_params)
    if @visit.save
      render json: @visit.to_json, status: :created
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  def update
    @patient = Patient.find(params[:patient_id])
    @visit = @patient.visits.find(params[:id])
    if @visit.update(visit_params)
      render json: @visit.to_json, status: :ok
    else
      render json: @visit.errors, status: :unprocessabel_entity
    end
  end

  private
  def visit_params
    params.require(:visit).permit(
     :imaging,
     :otherProcedures,
     :chiefComplaint,
     :loc,
     :gcs,
     :neuroNotes,
     :rhythm,
     :ejectionFraction,
     :cardioNotes,
     :ventSettings,
     :abg,
     :pulmonaryNotes,
     :npo,
     :diet,
     :tubes,
     :giNotes,
     :foley,
     :foleyPlaceDate,
     :renalNotes,
     :glucoseSticks,
     :endoNotes,
     :sirsSepsisAlert,
     :antibiotics,
     :cultures,
     :idNotes,
     :intact,
     :woundCare,
     :incision,
     :decubitisUlcers,
     :edema,
     :pt,
     :skinNotes,
     :assessmentPlan
    )
  end

end
