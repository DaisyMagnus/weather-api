require 'httparty'

class TenDayForecast
  attr_reader :zip, :page
  def initialize(zip)
    @zip = zip
    @page = get_data
  end

  def day
   upcoming = @page["forecast"]["txt_forecast"]["forecastday"]
    1.upto(7) {|num| p "On day #{num} the forecast calls for #{upcoming [num]["fcttext"]}"}
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{zip}.json")
  end
end


# def day
#  upcoming = @page["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"]
#   0.upto(7) {|num| puts "@page["forecast"]["txt_forecast"]["forecastday"][#{num}]["fcttext"]"}
# end
