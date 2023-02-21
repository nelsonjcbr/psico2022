class RelguiasController < ApplicationController
  def index
    # Guias faturadas no período
    unless params[:nome].present?
      @guias = Guia.joins(:paciente).where('data_fatura between ? and ?', params[:data_inicio], params[:data_fim]).order('pacientes.nome')
    else
      @guias 
    end

    respond_to do |format|
      if turbo_frame_request? && turbo_frame_request_id == 'search_results'
        format.html { render partial: 'listar', locals: {guias: @guias} }
      else
        format.html
      end
    end  
  end 
end
