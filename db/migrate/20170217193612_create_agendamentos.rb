class CreateAgendamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :agendamentos do |t|
      t.string :nome
      t.string :atendente
      t.string :preco
      t.datetime :hora
      t.text :anotacao

      t.timestamps
    end
  end
end
