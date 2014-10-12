class CreateTitulacoes < ActiveRecord::Migration
  def change
    create_table :titulacoes do |t|
      t.string :mestre
      t.string :pos
      t.string :doutor

      t.timestamps
    end
  end
end
