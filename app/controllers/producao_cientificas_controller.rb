class ProducaoCientificasController < InheritedResources::Base
	def build_resource_params
    	[params.fetch(:producao_cientificas, {}).permit(:artigo,:monografia)]
    end
end
