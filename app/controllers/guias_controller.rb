class GuiasController < ApplicationController
  before_action :set_guia, only: %i[ show edit update destroy ]
  before_action :set_tipos

  # GET /guias or /guias.json
  def index
    @pacientes_usa_guias = Paciente.ativos.joins(:convenio).where('usa_guia')
    @pagy, @guias = pagy(Guia.order('data_fatura desc, id desc'))
  end

  # GET /guias/1 or /guias/1.json
  def show
  end

  # GET /guias/new
  def new
    @guia = Guia.new(:tipo => 2)
  end

  # GET /guias/1/edit
  def edit
  end

  # POST /guias or /guias.json
  def create
    @guia = Guia.new(guia_params)

    respond_to do |format|
      if @guia.save
        format.html { redirect_to guia_url(@guia), notice: "Guia was successfully created." }
        format.json { render :show, status: :created, location: @guia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guias/1 or /guias/1.json
  def update
    respond_to do |format|
      if @guia.update(guia_params)
        format.html { redirect_to guia_url(@guia), notice: "Guia was successfully updated." }
        format.json { render :show, status: :ok, location: @guia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guias/1 or /guias/1.json
  def destroy
    @guia.destroy

    respond_to do |format|
      format.html { redirect_to guias_url, notice: "Guia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_tipos 
      @tipos = [['Consulta Inicial', 1], ['Atendimento', 2]]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_guia
      @guia = Guia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guia_params
      params.require(:guia).permit(:tipo, :paciente_id, :numero, :solicitados, :data_fatura)
    end
end
