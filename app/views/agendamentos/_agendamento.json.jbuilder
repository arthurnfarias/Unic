json.extract! agendamento, :id, :nome, :atendente, :preco, :hora, :anotacao, :created_at, :updated_at
json.url agendamento_url(agendamento, format: :json)