class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_id
      t.text :event_location
      t.string :event_image
      t.string :event_date
      t.text :event_time
      t.string :event_website
      t.string :contact_email
      t.text :event_description
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
