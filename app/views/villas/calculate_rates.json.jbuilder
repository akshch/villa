json.villa do
  json.name @property.name
  json.availbility @villa.first.availbility
  json.total_price calculate_total_price(@villa.sum(:price_per_night))
  json.check_in params[:check_in]
  json.check_out params[:check_out]
end
