json.array!(@professores) do |professor|
  json.extract! professor, :id, :nome, :cpf, :telefone, :endereco
  json.url professor_url(professor, format: :json)
end
