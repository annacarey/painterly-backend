class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :grid, array: true, default: []
      t.timestamps
    end
  end
end
