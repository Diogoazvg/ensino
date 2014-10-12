json.array!(@titulacoes) do |titulacao|
  json.extract! titulacao, :id, :mestre, :pos_graduado, :doutor
  json.url titulacao_url(titulacao, format: :json)
end
