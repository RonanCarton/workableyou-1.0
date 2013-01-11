class CreateForemCategories < ActiveRecord::Migration
  def change
    create_table :forem_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
