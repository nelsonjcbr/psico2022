class EvolucaoTiposController < ApplicationController
  before_action :set_evolucao_tipo, only: %i[ show edit update destroy ]

  # GET /evolucao_tipos or /evolucao_tipos.json
  def index
    @evolucao_tipos = EvolucaoTipo.all
  end

  # GET /evolucao_tipos/1 or /evolucao_tipos/1.json
  def show
  end

  # GET /evolucao_tipos/new
  def new
    @evolucao_tipo = EvolucaoTipo.new
  end

  # GET /evolucao_tipos/1/edit
  def edit
  end

  # POST /evolucao_tipos or /evolucao_tipos.json
  def create
    @evolucao_tipo = EvolucaoTipo.new(evolucao_tipo_params)

    respond_to do |format|
      if @evolucao_tipo.save
        format.html { redirect_to evolucao_tipo_url(@evolucao_tipo), notice: "Evolucao tipo was successfully created." }
        format.json { render :show, status: :created, location: @evolucao_tipo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evolucao_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evolucao_tipos/1 or /evolucao_tipos/1.json
  def update
    respond_to do |format|
      if @evolucao_tipo.update(evolucao_tipo_params)
        format.html { redirect_to evolucao_tipo_url(@evolucao_tipo), notice: "Evolucao tipo was successfully updated." }
        format.json { render :show, status: :ok, location: @evolucao_tipo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evolucao_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evolucao_tipos/1 or /evolucao_tipos/1.json
  def destroy
    @evolucao_tipo.destroy

    respond_to do |format|
      format.html { redirect_to evolucao_tipos_url, notice: "Evolucao tipo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evolucao_tipo
      @evolucao_tipo = EvolucaoTipo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evolucao_tipo_params
      params.require(:evolucao_tipo).permit(:nome)
    end
end
