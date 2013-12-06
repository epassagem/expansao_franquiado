class CreateProContratos < ActiveRecord::Migration
  def change
    create_table :pro_contratos do |t|
      t.string :arquivo
      t.boolean :estatus
      t.integer :interessado_id

      t.timestamps
    end
  end
end
