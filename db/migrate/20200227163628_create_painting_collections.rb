class CreatePaintingCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :painting_collections do |t|
      t.references :collection, null: false, foreign_key: true
      t.references :painting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
