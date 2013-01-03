Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'kdXSnow97NhJ65vxD9BctA', 'mR4AZlvmAzXezD6vbbGD6pv54rlp0ZWIe9Nu6Nz6M'
  #provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :linked_in, 'vg8cg31rdett', 'M8EETJdH6YedrTyd', :scope => 'r_fullprofile r_emailaddress r_network', :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
  ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location"]
end