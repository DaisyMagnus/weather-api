require 'httparty'

class CurrentAlerts
  attr_reader :zip, :page
  def initialize(name)
    @name = name
    @page = get_data
  end

  def warning
    p @page["alerts"]["description"]
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{name}.json")
  end
end
