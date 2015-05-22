require 'httparty'

class ConditionsSummary
  def initialize(zip)
    @conditions = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")
  end

  def temp
    @conditions["current_observation"]["temp_f"]
  end

  def feels_like
    @conditions["current_observation"]["feelslike_f"]
  end

  def weather
    @conditions["current_observation"]["weather"]
  end

  def kites
    @conditions["current_observation"]["wind_mph"]

  end

end

summary = ConditionsSummary.new(27278)
p summary.temp
p summary.feels_like
p summary.weather
p summary.kites
