class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :sobrenome
      t.string :cpf
      t.string :email
      t.string :telefone
      t.string :endereco
      t.string :cep

      t.timestamps
    end
  end
end
