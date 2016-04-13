class VisitsController < ApplicationController
  # NHO: before_action :get_patient
  def index
    get_patient
    @visits = @patient.visits.all
    render json: @visits.to_json, status: :ok
  end

  def show
    get_patient
    @visit = @patient.visits.find(params[:id])
    # NHO: following up from my comment in the index controller in angular, we can include attribtues of child models like:
    render json: @visit.to_json(include: [:vitals, :rxs, :ptptts, :dxs, :cbcs]), status: :ok
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
