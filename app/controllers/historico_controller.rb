class HistoricoController < ApplicationController
  def index
  	@agendamentos = Agendamento.where(["nome LIKE ?", "%#{params[:search]}%"]).order("hora ASC").paginate(page: params[:page], per_page: 6)
  end
end
