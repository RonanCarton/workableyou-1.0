class CreateWforums < ActiveRecord::Migration
  def change
    create_table :wforums do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
