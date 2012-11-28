class Event < ActiveRecord::Base
  attr_accessible :contact_email, :created_at, :event_date, :event_description, :event_id, :event_image, :event_location, :event_time, :event_website, :updated_at, :user_id
end
