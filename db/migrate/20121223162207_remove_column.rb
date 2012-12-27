class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :applications, :cv_upload
  end
end
