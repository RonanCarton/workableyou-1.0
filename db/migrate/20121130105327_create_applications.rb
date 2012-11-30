class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :application_id
      t.string :job_id
      t.string :user_id
      t.text :application_cover_note
      t.string :cv_upload

      t.timestamps
    end
  end
end
