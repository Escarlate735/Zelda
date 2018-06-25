class CreatePacotes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacotes do |t|
      t.string :Usuario
      t.string :Pagamento
      t.string :Status

      t.timestamps
    end
  end
end
