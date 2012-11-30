class Application < ActiveRecord::Base
  attr_accessible :application_cover_note, :application_id, :cv_upload, :job_id, :user_id
end
