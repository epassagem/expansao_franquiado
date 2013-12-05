class CreateCronogramas < ActiveRecord::Migration
  def change
    create_table :cronogramas do |t|
      t.string :status
      t.integer :interessado_id

      t.timestamps
    end
  end
end
