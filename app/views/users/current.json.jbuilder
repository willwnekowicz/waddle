json.features do

  json.array! @locations do |location|
  
    json.type 'Feature'
    json.properties do
      json.title location.name
    end
    json.geometry do
      json.type 'Point'
      json.coordinates [location.longitude.to_f, location.latitude.to_f]
    end
  
  end

end

