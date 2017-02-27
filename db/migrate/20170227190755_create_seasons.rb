class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.string :name
      t.integer :numb
      t.references :show, foreign_key: true

      t.timestamps
    end
  end
end
