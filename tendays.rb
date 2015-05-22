require 'httparty'


class TenDayForecast
  attr_reader :zip
  def initialize(zip)
    @weather = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
  end

  def ten
    @weather["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"]
  end

end

day = TenDayForecast.new(27278)
