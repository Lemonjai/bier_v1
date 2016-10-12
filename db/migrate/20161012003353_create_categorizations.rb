class CreateCategorizations < ActiveRecord::Migration[5.0]
  def change
    create_table :categorizations do |t|
      t.integer :beer_id
      t.integer :wine_id
      t.integer :colour_id
      t.integer :beertype_id
      t.integer :winetype_id
      t.integer :brewery_id
      t.integer :winery_id
      t.timestamps
    end
  end
end
