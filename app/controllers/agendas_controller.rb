class AgendasController < ApplicationController
  before_action :set_agenda, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /agendas or /agendas.json
  def index
    unless params[:cmpt].present? 
      params[:cmpt] = Date.today.year.to_s + Date.today.month.to_s.rjust(2,'0')
    end
    ano = params[:cmpt][0..3] 
    mes = params[:cmpt][4..5]
    unless params[:cmpt] == '0' 
      @agendas = Agenda.where("extract('month' from data_hora) = #{mes} and extract('year' from data_hora) = #{ano}").order(:data_hora)
    else
      @agendas = Agenda.all.order(:data_hora)
    end
    @total_valor_atendimentos = @agendas.sum(:valor_atendimento)
    @total_valor_recebido = @agendas.sum(:valor_recebido)
    @total_atendimentos = @agendas.count
  end

  # GET /agendas/1 or /agendas/1.json
  def show
  end

  # GET /agendas/new
  def new
    @agenda = Agenda.new
  end

  # GET /agendas/1/edit
  def edit
  end

  # POST /agendas or /agendas.json
  def create
    @agenda = Agenda.new(agenda_params)

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to agenda_url(@agenda), notice: "Agenda was successfully created." }
        format.json { render :show, status: :created, location: @agenda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendas/1 or /agendas/1.json
  def update
    respond_to do |format|
      if @agenda.update(agenda_params)
        format.html { redirect_to agenda_url(@agenda), notice: "Agenda was successfully updated." }
        format.json { render :show, status: :ok, location: @agenda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendas/1 or /agendas/1.json
  def destroy
    @agenda.destroy

    respond_to do |format|
      format.html { redirect_to agendas_url, notice: "Agenda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agenda_params
      params.require(:agenda).permit(:data_hora, :paciente_id, :convenio_id, :agendado, :valor_atendimento, :obs, :recurso_id, :valor_recebido)
    end
end
