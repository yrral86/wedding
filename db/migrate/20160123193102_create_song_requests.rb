class CreateSongRequests < ActiveRecord::Migration
  def change
    create_table :song_requests do |t|
      t.string :artist
      t.string :name
      t.string :requested_by

      t.timestamps null: false
    end
  end
end
