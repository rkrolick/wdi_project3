class PatientsController < ApplicationController
  # NHO: again, here could use a before action to call a method that looks up the patient to save repetitive queries
  def index
      @patients = Patient.all
      respond_to do |format|
        format.html # NHO: while this works because Rails is smart enough, recommend explictly rendering something
        format.json{ render json: @patients}
      end
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient.to_json, status: :ok
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient.to_json, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      render json: @patient.to_json, status: :ok
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    render json: {status: "success"}, status: :ok
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
