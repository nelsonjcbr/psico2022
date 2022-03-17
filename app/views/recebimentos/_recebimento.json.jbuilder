json.extract! recebimento, :id, :data_recebimento, :recurso_id, :valor_recebido, :obs, :created_at, :updated_at
json.url recebimento_url(recebimento, format: :json)
