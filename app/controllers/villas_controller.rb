class VillasController < ActionController::Base

  def index
    start_date = params[:check_in].present? ? params[:check_in] : Date.today
    end_date = params[:check_out].present? ? params[:check_out] : Date.today + 7.days
    condition = []
    price = params[:price].present? ? params[:price] : 'DESC'
    condition << ["calendars.availbility = #{params[:available]}"] if params[:available].present?
    @villas = Calendar.includes(:property).where('date(calendars.date) between ? and ?', start_date, end_date).where(condition.join("AND")).order("calendars.price_per_night #{price}")
  end

  def calculate_rates
    if params[:check_in].blank? || params[:check_out].blank?
      render json: { error: 'Select Check in and Check out dates' }, status: 422 and return
    end
    if params[:name].blank?
      render json: { error: 'Please enter a villa name' }, status: 422 and return
    end
    @property = Property.where(name: params[:name]).first
    start_date = params[:check_in]
    end_date = params[:check_out]
    condition = []
    @villa = @property.calendars.where('date(calendars.date) between ? and ? and availbility =?', start_date, end_date, true)
  end 
end
