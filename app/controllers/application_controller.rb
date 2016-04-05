class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  private
  def get_patient
    @patient = Patient.find(params[:patient_id])
  end

  def get_visit
    get_patient
    @visit = @patient.visits.find(params[:visit_id])
  end
end
