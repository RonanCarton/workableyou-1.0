class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.integer :job_id
      t.text :job_description
      t.integer :user_id
      t.text :job_location
      t.text :job_type
      t.text :employer
      t.string :employer_website
      t.datetime :created_at
      t.datetime :updated_at
      t.text :how_to_apply
      t.string :photo_url
      t.string :industry
      t.text :hours
      t.text :days

      t.timestamps
    end
  end
end
