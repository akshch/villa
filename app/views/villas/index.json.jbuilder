json.villas @villas do |villa|
  json.name villa.property.name
  json.available villa.availbility
  json.price_per_night villa.price_per_night
end