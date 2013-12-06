class CreateDocPontoComers < ActiveRecord::Migration
  def change
    create_table :doc_ponto_comers do |t|
      t.boolean :estatus
      t.string :arquivo
      t.string :tipo
      t.integer :interessado_id

      t.timestamps
    end
  end
end
