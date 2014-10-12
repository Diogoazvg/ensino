class Professor < ActiveRecord::Base
	has_and_belongs_to_many :titulacoes
	has_and_belongs_to_many :producao_cientificas
end
