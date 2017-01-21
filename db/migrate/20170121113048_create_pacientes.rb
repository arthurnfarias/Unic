class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :prontuario
      t.string :identidade
      t.string :cpf
      t.date :nascimento
      t.integer :idade
      t.string :sexo
      t.string :email
      t.string :telefone
      t.string :ans
      t.string :operadora
      t.string :plano
      t.string :cartao
      t.string :usuario
      t.string :titular
      t.text :observacao

      t.timestamps
    end
  end
end
