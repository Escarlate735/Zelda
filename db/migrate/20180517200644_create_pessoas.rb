class CreatePessoas < ActiveRecord::Migration[5.2]model
  def change
    create_table :pessoas do |t|
      t.string :Nome
      t.string :CPF
      t.string :Email
      t.string :Endereco
      t.string :Data_de_Nascimento

      t.timestamps
    end
  end
end
