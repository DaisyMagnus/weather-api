require 'httparty'


class TenDayForecast
  attr_reader :zip
  def initialize(zip)
    @weather = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
  end

  def ten
    p @weather["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"]
    p @weather["forecast"]["txt_forecast"]["forecastday"][1]["fcttext"]
    p @weather["forecast"]["txt_forecast"]["forecastday"][2]["fcttext"]
    p @weather["forecast"]["txt_forecast"]["forecastday"][3]["fcttext"]
    p @weather["forecast"]["txt_forecast"]["forecastday"][4]["fcttext"]
    p @weather["forecast"]["txt_forecast"]["forecastday"][5]["fcttext"]
    p @weather["forecast"]["txt_forecast"]["forecastday"][6]["fcttext"]
  end

end


# def ten
#   forecast = @weather["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"]
#   puts "Alright. Here's the 10 day forecast."
#   forecast.each do |f|
#       puts "Today is #{@weather["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"]}"
# end
