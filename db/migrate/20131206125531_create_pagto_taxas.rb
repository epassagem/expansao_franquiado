class CreatePagtoTaxas < ActiveRecord::Migration
  def change
    create_table :pagto_taxas do |t|
      t.boolean :estatus
      t.integer :interessado_id

      t.timestamps
    end
  end
end
