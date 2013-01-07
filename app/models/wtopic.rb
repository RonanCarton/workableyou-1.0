class Wtopic < ActiveRecord::Base
  attr_accessible :last_post_at, :last_poster_id, :name, :user_id, :wforum_id
    belongs_to :wforum
    has_many :wposts, :dependent => :destroy
  end


