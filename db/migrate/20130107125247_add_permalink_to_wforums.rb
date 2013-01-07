class AddPermalinkToWforums < ActiveRecord::Migration
  def self.up
    add_column :wforums, :permalink, :string
    end

end
