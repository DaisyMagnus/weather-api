require './conditions.rb'
require './hurricane.rb'
require './sunrise.rb'
require './tendays.rb'

puts "What location would you like information for?"
input = gets.chomp
puts "Okay. Here's the summary for #{input}"
x = ConditionsSummary.new(input)
y = SunriseSunset.new(input)
z =TenDayForecast.new(input)
a = Hurricanes.new
p x.temp
p y.sunrise
p y.sunset
p z.ten
p a.storm
