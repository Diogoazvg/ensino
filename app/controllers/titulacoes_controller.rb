class TitulacoesController < InheritedResources::Base
	def build_resource_params
    	[params.fetch(:titulacao, {}).permit(:mestre,:pos,:doutor)]
    end
end
