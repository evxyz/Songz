class CreateSongsDbs < ActiveRecord::Migration
  def change
    create_table :songs_dbs do |t|
      t.string :title
      t.string :artist
      t.text :comments

      t.timestamps
    end
  end
end
