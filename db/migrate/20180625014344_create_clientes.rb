class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    drop_table :clientes
    create_table :clientes do |t|
      t.string :Nome
      t.string :CPF
      t.string :Email
      t.string :Endereco
      t.string :Data_de_Nascimento

      t.timestamps
    end
  end
end
