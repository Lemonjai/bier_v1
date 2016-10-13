class CreateWinecategories < ActiveRecord::Migration[5.0]
  def change
    create_table :winecategories do |t|
      t.integer :wine_id
      t.integer :wcolour_id
      t.integer :winetype_id
      t.integer :winery_id
      t.timestamps
    end
  end
end
