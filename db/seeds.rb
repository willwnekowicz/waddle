User.create!([
  {email: "william.wnekowicz@gmail.com", encrypted_password: "$2a$10$IeAFhmTmVHeoV1gg/7BuTOOBR6yRSEOyVraBEXillra0Z1tpZLy32", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2014-03-29 19:22:29", last_sign_in_at: "2014-03-29 19:21:57", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", provider: nil, uid: nil, username: "William Wnękowicz"},
  {email: nil, encrypted_password: "$2a$10$HWilWff7ERxLWpSWSPQs9uSsM4bCMZTD9WXvGMRvSGA.Z6maFm9RG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2014-03-29 23:52:49", last_sign_in_at: "2014-03-29 20:53:00", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", provider: nil, uid: nil, username: "William Wnekowicz"}
])
Authorization.create!([
  {user_id: 1, provider: "foursquare", uid: "10167491", token: "QD2VROVUTELVJIPPS3X4HQUED11VHMYNMVDM3I5NZ50IB3BX", secret: nil, profile_page: nil},
  {user_id: 11, provider: "twitter", uid: "32316084", token: "32316084-5NvYuvQyOTnOZDBoTVUZwtfT2YTrGpiYBTOto9uFs", secret: "o889RBP43UCRJ2s0o3wTitzBSOD5f3ywZpDfShr5cCbOw", profile_page: nil}
])
Location.create!([
  {name: "JuiceTank Innovation Lab", latitude: "40.5376121751606", longitude: "-74.5230531692505"},
  {name: "Palazzone 1960", latitude: "40.892972", longitude: "-74.252023"},
  {name: "Golds Gym", latitude: "40.8956372418028", longitude: "-74.2249053807892"},
  {name: "Versailles Diner", latitude: "40.8865657804319", longitude: "-74.2811769047477"},
  {name: "Maryland House Travel Plaza", latitude: "39.4972191732879", longitude: "-76.2322425842285"},
  {name: "Chipotle Mexican Grill", latitude: "40.8886008119303", longitude: "-74.25208568573"},
  {name: "Pilgrim Diner", latitude: "40.8359771474462", longitude: "-74.2273235321045"},
  {name: "Chipotle Mexican Grill", latitude: "40.8886008119303", longitude: "-74.25208568573"},
  {name: "Jackie's Grillette", latitude: "40.84172", longitude: "-74.208214"},
  {name: "Polonia Bakery", latitude: "40.8665102713093", longitude: "-74.1225995368642"},
  {name: "Tick Tock Diner", latitude: "40.8367361080575", longitude: "-74.1524362564087"},
  {name: "TGI Fridays", latitude: "40.89116378", longitude: "-74.2515707"},
  {name: "Sky Acres Airport (44N)", latitude: "41.7065615337243", longitude: "-73.7342691421509"},
  {name: "Sandanona - Orvis Gun Club", latitude: "41.7990766162074", longitude: "-73.7153381620762"},
  {name: "Camelback Mountain Resort", latitude: "41.0517632342264", longitude: "-75.3553571909053"},
  {name: "Mount Airy Casino Resort", latitude: "41.1132447836074", longitude: "-75.3210639953613"},
  {name: "Pocono Mountains Municipal Airport (KMPO)", latitude: "41.1385459334141", longitude: "-75.3747976944509"},
  {name: "Newark Liberty International Airport (EWR)", latitude: "40.6896849354109", longitude: "-74.1793870925903"},
  {name: "Palm Beach International Airport (PBI)", latitude: "26.6879565151844", longitude: "-80.0902462005615"},
  {name: "Palm Beach County Park Airport (LNA)", latitude: "26.5879514941035", longitude: "-80.0865125656128"}
])
Status.create!([
  