class CreateValidPontoComers < ActiveRecord::Migration
  def change
    create_table :valid_ponto_comers do |t|
      t.integer :estatus
      t.integer :interessado_id

      t.timestamps
    end
  end
end
