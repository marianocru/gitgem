class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :gemset_id
      t.integer :numero_version
      t.integer :revision

      t.timestamps
    end
  end
end
