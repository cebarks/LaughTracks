class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :runtime
      t.string :thumbnail
      t.integer :comedian_id
      t.timestamps
    end
  end
end
