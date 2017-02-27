class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :name
      t.integer :rating
      t.string :img_url
      t.string :info

      t.timestamps
    end
  end
end
