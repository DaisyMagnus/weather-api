require 'minitest/autorun'
require 'minitest/pride'
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

  def test_02_get_hurricane_info
    storm = Hurricanes.new
    assert_equal 1, storm.storm
  end

  def test_03_get_zip_code
    brooklyn = ConditionsSummary.new(11215)
    assert_equal 11215, brooklyn.zip
  end

  def test_04_get_temp

  end
end
