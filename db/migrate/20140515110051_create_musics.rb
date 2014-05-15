class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.string :theme
      t.string :spotify_url
      t.string :year

      t.timestamps
    end
  end
end
