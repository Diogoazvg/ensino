json.array!(@titulacoes) do |titulacao|
  json.extract! titulacao, :id, :mestre, :pos, :doutor
  json.url titulacao_url(titulacao, format: :json)
end
