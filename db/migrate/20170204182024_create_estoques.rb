class CreateEstoques < ActiveRecord::Migration[5.0]
  def change
    create_table :estoques do |t|
      t.string :nome
      t.string :preco
      t.integer :quantidade

      t.timestamps
    end
  end
end
