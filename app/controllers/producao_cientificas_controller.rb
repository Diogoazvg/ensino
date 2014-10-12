class ProducaoCientificasController < InheritedResources::Base
	def build_resource_params
    	[params.fetch(:producao_cientifica, {}).permit(:artigo,:monografia)]
    end
end
