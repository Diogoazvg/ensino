class CreateProfessorTitulacaoJoinTable < ActiveRecord::Migration
  def change
  	create_table :professores_titulacoes, id: false do |t|
	t.integer :professor_id
	t.integer :titulacao_id
	end
  end
end
