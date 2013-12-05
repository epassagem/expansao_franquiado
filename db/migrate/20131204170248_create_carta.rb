class CreateCarta < ActiveRecord::Migration
  def change
    create_table :carta do |t|
      t.string :arquivo
      t.boolean :status
      t.integer :interessado_id

      t.timestamps
    end
  end
end
