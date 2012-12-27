class Application < ActiveRecord::Base
  attr_accessible :application_cover_note, :application_id, :cv, :job_id, :user_id
  mount_uploader :cv, CvUploader

end
