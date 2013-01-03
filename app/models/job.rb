class Job < ActiveRecord::Base
  validates :job_title, :job_id, :job_description, :user_id, :job_location, :job_type, :employer,:employer_website, :how_to_apply, :industry, :hours, :days, :presence => true


attr_accessible :created_at, :days, :employer, :employer_website, :hours, :how_to_apply, :industry, :job_description, :job_id, :job_location, :job_title, :job_type, :photo_url, :updated_at, :user_id

  #def job_location
  #  job.try(:location)
  #end
  #
  #def job_location=(location)
  #  self.job = Job.find_or_create_by_location(location) if location.present?
  #end
end

