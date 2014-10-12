class CreateProducaoCientificaProfessorJoinTable < ActiveRecord::Migration
  def change
  	create_table :producao_cientificas_professores, id: false do |t|
	t.integer :professor_id
	t.integer :producao_cientifica_id
	end
  end
end
