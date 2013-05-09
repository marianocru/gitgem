class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.integer :usuario_id
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
