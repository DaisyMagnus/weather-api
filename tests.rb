require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
# require './condition.rb'
# require './hurricane.rb'
# require './sunrise.rb'
# require './tendays.rb'
require 'json'

# class Hurricanes
#     private def get_data
#     JSON.parse(File.open("hurricanes.json").read)
#   end
# end

class ConditionsSummary
  attr_reader :zip, :temp
  def initialize(zip)
    @zip = zip
    @temp = temp
  end

  private def get_data
    JSON.parse(File.open("conditions.json").read)
  end
end

# class Sunrise
#   def initialize(zip)
#     @zip = zip
#   end
#
#   private def get_data
#     JSON.parse(File.open("sunrise.json").read)
#   end
# end
#
# class TenDayForecast
#   private def get_data
#     JSON.parse(File.open("tendays.json").read)
#   end
# end

class WeatherTest < Minitest::Test

  def test_01_conditions_class_exists
    place = ConditionsSummary.new(27278)
    assert_equal 27278, place.zip
  end

  # def test_02_assert_hurricane_class_exists
  #   bernard = Hurricanes.new
  # end
  #
  # def test_03_get_hurricane_info
  #   albert = Hurricanes.new
  #   assert_equal 1, albert.storm
  # end

  def test_04_get_zip_code
    brooklyn = ConditionsSummary.new(11215)
    assert_equal 11215, brooklyn.zip
  end

  # def test_05_assert_tendays_class_exists
  #   monday = TenDayForecast.new(27278)
  #   assert_equal 27278, monday.zip
  # end

  def test_06_assert_temp
    sunshine = ConditionsSummary.new(27278)
    assert_equal 73.9, sunshine.conditions.temp
  end
  #
  # def test_05_assert_sunrise_class_exists
  #   shine = Sunrise.new(27278)
  #   assert_equal 6, shine.sunset
  # end

  # def test_05_assert_ten_day_forecast_class_exists
  #
  # end



end
