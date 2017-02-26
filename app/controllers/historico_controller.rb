class HistoricoController < ApplicationController
  def index
  	@agendamentos = Agendamento.where(["nome LIKE ?", "%#{params[:search]}%"]).order("hora DESC").paginate(page: params[:page], per_page: 8)
  end
end
