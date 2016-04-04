class VisitsController < ApplicationController

  def show
    @visit = Patient.find(params[:patient_id])
    render json: @visit.to_json, status: :ok
  end

  private
  def visit_params

  end

end
