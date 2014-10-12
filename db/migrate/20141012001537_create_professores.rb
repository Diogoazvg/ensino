class CreateProfessores < ActiveRecord::Migration
  def change
    create_table :professores do |t|
      t.string :nome
      t.integer :cpf
      t.integer :telefone
      t.string :endereco

      t.timestamps
    end
  end
end
