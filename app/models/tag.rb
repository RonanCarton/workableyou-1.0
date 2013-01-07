class Tag < ActiveRecord::Base
  has_many :taggings, :dependent => :destroy
  has_many :articles, :through => :taggings
  attr_accessible :name
end
