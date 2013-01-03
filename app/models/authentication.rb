class Authentication < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :create, :destroy, :index, :provider, :uid, :user_id


  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider
  end

