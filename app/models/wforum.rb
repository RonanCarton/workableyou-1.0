class Wforum < ActiveRecord::Base

  has_many :wtopics, :dependent => :destroy

  validates :name, :presence => true,
            :length => {:minimum => 10}
  validates :description, :presence => true,
            :length => {:maximum => 250}
  attr_accessible :description, :name
  before_create :create_permalink
  #private
  def create_permalink
    permalink = self.name.gsub(' ', '-').gsub(/[^a-zA-Z0-9\_\-\.]/, '')
  end

  def to_param
    permalink
  end
  end
