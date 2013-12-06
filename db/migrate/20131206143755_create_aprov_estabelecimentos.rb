class CreateAprovEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :aprov_estabelecimentos do |t|
      t.boolean :estatus
      t.integer :interessado_id

      t.timestamps
    end
  end
end
