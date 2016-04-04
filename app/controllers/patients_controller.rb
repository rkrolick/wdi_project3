class PatientsController < ApplicationController
  def index
      @patients = Patient.all
      respond_to do |format|
        format.html
        format.json{ render json: @products}
      end
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient.to_json, status: :ok
  end

  private
  def patient_params
    params.require(:patient).permit(
     :firstName,
     :lastName,
     :mrn,
     :attendingName,
     :roomNumber,
     :codeStatus,
     :dob,
     :age,
     :allergies,
     :diet,
     :nextOfKin,
     :nextOfKinPhoneNumber,
     :isolation,
     :pmh,
     :homeMeds,
     :surgicalHx,
     :familyHistory,
     :smoking,
     :alcohol,
     :drugs,
     :psychHx,
     :occupation
    )
  end
end
