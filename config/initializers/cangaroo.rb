Spree::Wombat::Config.configure do |config|
  config.connection_id = "puniethahquoe5aisefoh9ci0Shuaniemei6jahx"
  config.connection_token = "ahsh8phuezu3xuhohs6kai5vaB1tae0wiy1shohp"

  config.push_objects = ["Spree::Product"]
  config.payload_builder = {
    "Spree::Product" => { serializer: "Spree::Wombat::ProductSerializer", root: "products" }
  }
  config.push_url = "http://localhost:3000/cangaroo/endpoint"
end
