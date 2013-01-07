class Wpost < ActiveRecord::Base

    belongs_to :wtopic
  end
  attr_accessible :content, :reply_to_id, :user_id, :wtopic_id
end
