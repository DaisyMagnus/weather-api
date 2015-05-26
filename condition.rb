require 'httparty'

class ConditionsSummary
  attr_reader :zip, :page
  def initialize(zip)
    @zip = zip
    @page = get_data
  end

  def temp
     "The temperature is now #{@page["current_observation"]["temp_f"]}ºF."
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")
  end
end
