class Application < ActiveRecord::Base
  validates :application_id, :presence => true
  validates :job_id, :presence => true
  validates :user_id, :presence => true
  attr_accessible :application_cover_note, :application_id, :cv, :job_id, :user_id
  mount_uploader :cv, CvUploader

end
