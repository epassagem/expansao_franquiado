class CreateRedacaos < ActiveRecord::Migration
  def change
    create_table :redacaos do |t|
      t.string :arquivo
      t.boolean :status
      t.integer :interessado_id

      t.timestamps
    end
  end
end
