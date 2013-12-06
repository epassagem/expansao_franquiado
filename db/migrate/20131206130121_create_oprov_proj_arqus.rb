class CreateOprovProjArqus < ActiveRecord::Migration
  def change
    create_table :oprov_proj_arqus do |t|
      t.boolean :estatus
      t.integer :interessado_id

      t.timestamps
    end
  end
end
