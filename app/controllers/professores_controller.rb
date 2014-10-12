class ProfessoresController < InheritedResources::Base
	def build_resource_params
    	[params.fetch(:professor, {}).permit(:nome,:cpf,:telefone,:endereco)]
    end
end