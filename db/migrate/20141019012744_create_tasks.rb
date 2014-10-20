class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :id
      t.datetime :due
      t.boolean :status
      t.string :title
      t.text :desc
      t.integer :band_id

      t.timestamps
    end
  end
end
