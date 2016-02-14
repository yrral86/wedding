class UpdateSongs < ActiveRecord::Migration
  def change
    remove_column :song_requests, :artist
    remove_column :song_requests, :name
    remove_column :song_requests, :requested_by
    add_column :song_requests, :request, :string
  end
end
