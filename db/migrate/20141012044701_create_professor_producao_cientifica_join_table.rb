class CreateProfessorProducaoCientificaJoinTable < ActiveRecord::Migration
  def change
  	def change
  	create_table :professores_producao_cientificas, id: false do |t|
	t.integer :professor_id
	t.integer :producao_cientifica_id
	end
  end
end
