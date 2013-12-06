class CreateTreinConsulComercials < ActiveRecord::Migration
  def change
    create_table :trein_consul_comercials do |t|
      t.boolean :estatus
      t.date :data
      t.integer :interessado_id

      t.timestamps
    end
  end
end
