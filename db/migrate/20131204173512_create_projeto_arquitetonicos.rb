class CreateProjetoArquitetonicos < ActiveRecord::Migration
  def change
    create_table :projeto_arquitetonicos do |t|
      t.boolean :status
      t.integer :interessado_id

      t.timestamps
    end
  end
end
