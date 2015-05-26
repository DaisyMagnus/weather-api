require 'httparty'

class Hurricanes
  attr_reader :page
  def initialize
    @page = get_data
  end

  def storm
    @page["response"]["features"]["currenthurricane"]
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/currenthurricane/view.json")
  end
end
