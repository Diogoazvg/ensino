json.array!(@producao_cientificas) do |producao_cientifica|
  json.extract! producao_cientifica, :id, :artigo, :monografia
  json.url producao_cientifica_url(producao_cientifica, format: :json)
end
