class Status < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  def self.get_from_foursquare(user)
  	u = user
  	response = RestClient.get("https://api.foursquare.com/v2/users/self/checkins?oauth_token=#{u.authorizations.where(provider:"foursquare").take.token}&v=20140329&limit=150");
  	
  	parsed_foursquare = JSON.parse(response)
  	
  	parsed_foursquare["response"]["checkins"]["items"].each do |checkin_item|  	

      unless user.statuses.where(providers_guid: checkin_item["id"]).exists?

      	s = self.new
    
      	
      	s.provider = "foursquare"
      	s.providers_guid = checkin_item["id"]
      	s.type = checkin_item["type"]
      	s.posted_at = checkin_item["createdAt"]
      	s.timezone_offset = checkin_item["timeZoneOffset"]
    
    
      	s.user_id = u.id
      	
      	
      	unless checkin_item["venue"].nil?
        	l = Location.new

        	l.name = checkin_item["venue"]["name"]
        	l.latitude = checkin_item["venue"]["location"]["lat"]
        	l.longitude = checkin_item["venue"]["location"]["lng"]
          
          l.save!
      
        	s.location_id = l.id
        end
      	
      	s.save
    	
    	end
  	
  	end

  end

end
