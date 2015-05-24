require 'httparty'

class ConditionsSummary
  attr_reader :zip
  def initialize(zip)
     @conditions = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")

  end

  def temp
    p "The temperature is now #{@conditions["current_observation"]["temp_f"]}."
  end

end
