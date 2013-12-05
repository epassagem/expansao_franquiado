class CreateInteressados < ActiveRecord::Migration
  def change
    create_table :interessados do |t|
      t.string :nome
      t.integer :cpf
      t.integer :rg
      t.date :data_nasc
      t.string :estado_civil
      t.string :regime_bens
      t.string :renda
      t.string :sera_admin
      t.string :dispon_integral
      t.string :quem_sera_admin
      t.string :resumo_prof
      t.string :manifesto_pos
      t.string :email

      t.timestamps
    end
  end
end
