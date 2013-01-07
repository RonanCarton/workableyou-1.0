class CreateWtopics < ActiveRecord::Migration
  def change
    create_table :wtopics do |t|
      t.integer :wforum_id
      t.integer :user_id
      t.string :name
      t.integer :last_poster_id
      t.datetime :last_post_at

      t.timestamps
    end
  end
end
