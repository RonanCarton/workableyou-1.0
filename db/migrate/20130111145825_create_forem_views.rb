class CreateForemViews < ActiveRecord::Migration
  def change
    create_table :forem_views do |t|
      t.integer :user_id
      t.integer :topic_id

      t.timestamps
    end
  end
end
