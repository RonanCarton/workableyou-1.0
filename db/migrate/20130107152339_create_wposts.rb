class CreateWposts < ActiveRecord::Migration
  def change
    create_table :wposts do |t|
      t.text :content
      t.integer :wtopic_id
      t.integer :user_id
      t.integer :reply_to_id

      t.timestamps
    end
  end
end
