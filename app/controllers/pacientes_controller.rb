class PacientesController < ApplicationController
  before_action :set_paciente, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /pacientes or /pacientes.json
  def index
    unless params[:nome].present?
      if params[:inativos].present? && params[:inativos] == "1"
        @pacientes = Paciente.inativos.order(:inativo, :nome) 
      else
        @pacientes = Paciente.ativos.order(:inativo, :nome)
      end
    else
      if params[:inativos].present? && params[:inativos] == "1"
        @pacientes = Paciente.inativos.search(params[:nome]).order(:inativo, :nome)
      else
        @pacientes = Paciente.ativos.search(params[:nome]).order(:inativo, :nome)
      end
    end

    respond_to do |format|
      if turbo_frame_request? && turbo_frame_request_id == 'paciente_body'
        format.html { render partial: 'pacientes_lista', locals: {pacientes: @pacientes} }
      else
        format.html
      end
    end

  end

  # GET /pacientes/1 or /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes or /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)

    respond_to do |format|
      if @paciente.save
        format.html { redirect_to paciente_url(@paciente), notice: "Paciente was successfully created." }
        format.json { render :show, status: :created, location: @paciente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacientes/1 or /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html { redirect_to paciente_url(@paciente), notice: "Paciente was successfully updated." }
        format.json { render :show, status: :ok, location: @paciente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacientes/1 or /pacientes/1.json
  def destroy
    @paciente.destroy

    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: "Paciente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paciente_params
      params.require(:paciente).permit(:nome, :nome_chamado, :cpf, :data_nascimento, :sexo, :endereco, :bairro, :cidade, :fones, :nome_mae, :nome_pai, :estado_civil, :nome_conjuge, :filhos, :local_trabalho, :religiao, :profissao, :grau_instrucao, :convenio_id, :inativo, :valor_atendimento, :codigo_beneficiario )
    end
end
