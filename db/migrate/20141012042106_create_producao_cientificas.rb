class CreateProducaoCientificas < ActiveRecord::Migration
  def change
    create_table :producao_cientificas do |t|
      t.string :artigo
      t.string :monografia

      t.timestamps
    end
  end
end
