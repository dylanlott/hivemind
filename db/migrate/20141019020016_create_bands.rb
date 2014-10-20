class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.integer :band_id
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
