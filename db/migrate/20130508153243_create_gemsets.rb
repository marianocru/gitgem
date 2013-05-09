class CreateGemsets < ActiveRecord::Migration
  def change
    create_table :gemsets do |t|
      t.integer :proyecto_id
      t.string :nombre

      t.timestamps
    end
  end
end
