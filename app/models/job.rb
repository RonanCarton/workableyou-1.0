class Job < ActiveRecord::Base
  attr_accessible :created_at, :days, :employer, :employer_website, :hours, :how_to_apply, :industry, :job_description, :job_id, :job_location, :job_title, :job_type, :photo_url, :updated_at, :user_id
end
