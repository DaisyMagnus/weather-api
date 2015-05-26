require 'httparty'

class TenDayForecast
  attr_reader :zip, :page
  def initialize(zip)
    @zip = zip
    @page = get_data
  end

  def day
    @page["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"]
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
  end
end
