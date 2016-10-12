class CreateBeertypes < ActiveRecord::Migration[5.0]
  def change
    create_table :beertypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
