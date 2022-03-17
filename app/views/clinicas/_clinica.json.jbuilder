json.extract! clinica, :id, :nome, :endereco, :bairro, :cidade, :uf, :cnpj, :fone, :created_at, :updated_at
json.url clinica_url(clinica, format: :json)
