class ConveniosController < ApplicationController
  before_action :set_convenio, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /convenios or /convenios.json
  def index
    @convenios = Convenio.all
  end

  # GET /convenios/1 or /convenios/1.json
  def show
  end

  # GET /convenios/new
  def new
    @convenio = Convenio.new
  end

  # GET /convenios/1/edit
  def edit
  end

  # POST /convenios or /convenios.json
  def create
    @convenio = Convenio.new(convenio_params)

    respond_to do |format|
      if @convenio.save
        format.html { redirect_to convenio_url(@convenio), notice: "Convenio was successfully created." }
        format.json { render :show, status: :created, location: @convenio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @convenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /convenios/1 or /convenios/1.json
  def update
    respond_to do |format|
      if @convenio.update(convenio_params)
        format.html { redirect_to convenio_url(@convenio), notice: "Convenio was successfully updated." }
        format.json { render :show, status: :ok, location: @convenio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @convenio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /convenios/1 or /convenios/1.json
  def destroy
    @convenio.destroy

    respond_to do |format|
      format.html { redirect_to convenios_url, notice: "Convenio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_convenio
      @convenio = Convenio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def convenio_params
      params.require(:convenio).permit(:nome, :valor_atendimento, :sem_guia)
    end
end
