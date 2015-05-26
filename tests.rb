require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './condition.rb'
require './hurricane.rb'
require './sunrise.rb'
require './tendays.rb'
require './alerts.rb'
require 'json'

# class Hurricanes
#     private def get_data
#     JSON.parse(File.open("hurricanes.json").read)
#   end
# end

class ConditionsSummary
  private def get_data
    JSON.parse(File.open("conditions.json").read)
  end
end

class SunriseSunset
  private def get_data
    JSON.parse(File.open("sunrise.json").read)
  end
end

class TenDayForecast
  private def get_data
    JSON.parse(File.open("tendays.json").read)
  end
end

class Hurricanes
  private def get_data
    JSON.parse(File.open("hurricanes.json").read)
  end
end

class CurrentAlerts
  private def get_data
    JSON.parse(File.open("alerts.json").read)
  end
end

class WeatherTest < Minitest::Test

  def test_01_conditions_class_exists
    place = ConditionsSummary.new(27278)
    assert_equal 27278, place.zip
  end

  def test_02_assert_hurricane_class_exists
    bernard = Hurricanes.new
    assert_equal 1, bernard.storm
  end

  def test_04_get_zip_code
    brooklyn = ConditionsSummary.new(11215)
    assert_equal 11215, brooklyn.zip
  end

  def test_05_assert_tendays_class_exists
    monday = TenDayForecast.new(27278)
    assert_equal 27278, monday.zip
  end

  def test_06_assert_temp
    sunshine = ConditionsSummary.new(27278)
    assert_equal 73.9, sunshine.page["current_observation"]["temp_f"]
  end

  def test_06_assert_sunrise_class_exists
    shine = SunriseSunset.new(27278)
    assert_equal 27278, shine.zip
    assert_equal "6", shine.page["sun_phase"]["sunrise"]["hour"]
  end

  def test_08_assert_ten_day_forecast
    clear = TenDayForecast.new(33133)
    assert clear.day.match(/cloudy/)
  end

  # def test_09_assert_current_alert_class_exists
  #   thursday = CurrentAlerts.new("IA/Des Moines")
  #   p thursday.page["alerts"]["alerts"]["description"].to_i
  # end

end
