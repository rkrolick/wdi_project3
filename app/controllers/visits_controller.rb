class VisitsController < ApplicationController
  def index
    get_patient
    @visits = @patient.visits.all
    render json: @visits.to_json, status: :ok
  end

  def show
    get_patient
    @visit = @patient.visits.find(params[:id])
    render json: @visit.to_json, status: :ok
  end

  def create
    get_patient
    @visit = @patient.visits.new(visit_params)
    if @visit.save
      render json: @visit.to_json, status: :created
    else
      render json: @visit.errors, status: :unprocessable_entity
    end
  end

  def update
    get_patient
    @visit = @patient.visits.find(params[:id])
    if @visit.update(visit_params)
      render json: @visit.to_json, status: :ok
    else
      render json: @visit.errors, status: :unprocessabel_entity
    end
  end

  def destroy
    get_patient
    @visit = @patient.visits.find(params[:id])
    @visit.destroy
    render json: {status: "success"}, status: :ok
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
