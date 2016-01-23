class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.integer :attendees
      t.string :note
      t.boolean :attending

      t.timestamps null: false
    end
  end
end
