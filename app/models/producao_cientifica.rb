class ProducaoCientifica < ActiveRecord::Base
	has_and_belongs_to_many :prodfessores
end
