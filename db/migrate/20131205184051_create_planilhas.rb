class CreatePlanilhas < ActiveRecord::Migration
  def change
    create_table :planilhas do |t|
      t.boolean :estatus
      t.integer :interessado_id

      t.timestamps
    end
  end
end
