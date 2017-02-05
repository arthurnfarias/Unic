json.extract! estoque, :id, :nome, :preco, :quantidade, :created_at, :updated_at
json.url estoque_url(estoque, format: :json)