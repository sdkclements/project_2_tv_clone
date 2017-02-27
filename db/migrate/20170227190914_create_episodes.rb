class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.string :name
      t.integer :epnumb
      t.string :link_url
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
