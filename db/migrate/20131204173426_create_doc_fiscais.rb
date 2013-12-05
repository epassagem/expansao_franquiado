class CreateDocFiscais < ActiveRecord::Migration
  def change
    create_table :doc_fiscais do |t|
      t.string :rg
      t.string :cpf
      t.string :serasa
      t.boolean :seresa_status
      t.string :fpc
      t.string :bens_imob
      t.string :imposto_renda_pf
      t.string :imposto_renda_pj
      t.string :comprovante_resid
      t.string :certidao_casamento
      t.string :socio_rg
      t.string :socio_cpf
      t.string :socio_serasa
      t.string :socio_fpc
      t.string :socio_bens_imob
      t.string :socio_imposto_renda_pf
      t.string :socio_imposto_renda_pj
      t.string :socio_comprovante_resid
      t.string :socio_certidao_casamento
      t.boolean :status
      t.integer :interessado_id

      t.timestamps
    end
  end
end
