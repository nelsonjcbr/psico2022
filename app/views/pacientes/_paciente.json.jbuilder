json.extract! paciente, :id, :nome, :cpf, :data_nascimento, :sexo, :endereco, :bairro, :cidade, :fones, :nome_mae, :nome_pai, :estado_civil, :nome_conjuge, :filhos, :local_trabalho, :religiao, :profissao, :grau_instrucao, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
