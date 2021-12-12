module ApplicationHelper

  def calculate_total_price(original_amount)
    gst_amount = (original_amount + Property::GST) / 100
    net_amount = original_amount + gst_amount
    return net_amount
  end

end
