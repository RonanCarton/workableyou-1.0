class Comment < ActiveRecord::Base
  belongs_to :article
  attr_accessible :article_id, :body, :email, :name
  validates_presence_of :name, :email, :body
end
