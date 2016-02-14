class UpdateRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :name, :string
    remove_column :rsvps, :note
  end
end
