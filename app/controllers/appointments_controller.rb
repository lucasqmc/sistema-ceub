class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy]

  # GET /appointments or /appointments.json
  def index
    #appointment where document number and client name are nil
    @appointments = Appointment.where(document_number: nil, client_name: nil).includes(:professional, :expertise)
  end

  # GET /appointments/1 or /appointments/1.json
  def show
  end

  def about
  end

  def search
    @empty_state = params[:empty_state] == "true"

    if params[:document_number].present?
      @appointments = Appointment.where("document_number LIKE ? ","%#{params[:document_number]}%" )
    else
      @appointments = []
    end

  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to appointment_url(@appointment), notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update

    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to appointment_url(@appointment) }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    # @appointment.update(document_number: nil, client_name: nil)
    document_number = @appointment.document_number
    professional_name = @appointment.professional.name

    @appointment.update_attribute(:document_number, nil)
    @appointment.update_attribute(:client_name, nil)


    respond_to do |format|
      format.html { redirect_to search_appointments_url + "?document_number=#{document_number}", notice: "Agendamento com Dr #{professional_name} cancelado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:start_at, :end_at, :document_number, :client_name)
    end
end
