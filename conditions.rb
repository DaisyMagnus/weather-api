require 'httparty'

class ConditionsSummary
  attr_reader :zip
  def initialize(zip)
    @zip = zip
    @conditions = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")
  end

  def temp
    @conditions["current_observation"]["temp_f"]
  end

end
