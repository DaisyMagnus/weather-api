require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './conditions.rb'
require './hurricane.rb'
require './sunrise.rb'
require './tendays.rb'

require 'json'

class Hurricanes
  private def get_data
    JSON.parse(File.open("hurricanes.json").read)
  end
end

class ConditionsSummary
  attr_reader :zip
  private def get_data
    JSON.parse(File.open("conditions.json").read)
  end
end

class Sunrise
  private def get_data
    JSON.parse(File.open("sunrise.json").read)
  end
end

class TenDayForecast
  private def get_data
    JSON.parse(File.open("tendays.json").read)
  end
end

class WeatherTest < Minitest::Test

  def test_01_conditions_class_exists
    place = ConditionsSummary.new(27278)
    assert_equal 27278, place.zip
    assert place.temp
  end

  def test_02_assert_hurricane_class_exists
    bernard = Hurricanes.new
  end

  def test_03_get_hurricane_info
    albert = Hurricanes.new
    assert_equal 1, albert.storm
  end

  def test_04_get_zip_code
    brooklyn = ConditionsSummary.new(11215)
    assert_equal 11215, brooklyn.zip
  end

  # def test_05_assert_sunrise_class_exists
  #   shine = Sunrise.new
  # end

  # def test_05_assert_ten_day_forecast_class_exists
  #
  # end



end
