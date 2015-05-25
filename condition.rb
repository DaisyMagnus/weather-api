require 'httparty'

class ConditionsSummary
  def initialize(zip)
    @zip = zip
    @conditions = get_data
  end

  def temp
     "The temperature is now #{@conditions["current_observation"]["temp_f"]}ºF."
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")
  end

end
