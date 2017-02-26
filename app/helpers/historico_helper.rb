module HistoricoHelper
	def agendamentoPasssado(agendamento)
		if (Time.now - 10.hours) > agendamento.hora
			true
		end			
	end
end
