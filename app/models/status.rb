class Status < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

def get_from_foursquare
	u = User.find(1)
	response = RestClient.get("https://api.foursquare.com/v2/users/self/checkins?oauth_token=#{u.Authorization.where(provider:"foursquare").take.token}&v=20140329");
	checkin_item = parsed_foursquare["response"]["checkins"]["items"][0]
	providers_guid = checkin_item["id"]
	type = checkin_item["type"]
	posted_at = checkin_item["createdAt"]
	timezone_offset = checkin_item["timeZoneOffset"]
	location_id = checkin_item["venue"]["id"]
	location.name = checkin_item["venue"]["name"]
	location.latitude = checkin_item["venue"]["location"]["lat"]
	location.longitude = checkin_item["venue"]["location"]["lng"]
	user_id = u.id
end
