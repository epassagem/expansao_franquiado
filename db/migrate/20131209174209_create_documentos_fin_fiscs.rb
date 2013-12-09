class CreateDocumentosFinFiscs < ActiveRecord::Migration
  def change
    create_table :documentos_fin_fiscs do |t|
      t.string :nome_doc
      t.string :arquivo
      t.integer :interessado_id

      t.timestamps
    end
  end
end
