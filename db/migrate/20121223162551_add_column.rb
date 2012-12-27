class AddColumn < ActiveRecord::Migration
  def change
    add_column :applications, :cv, :string
  end
end
