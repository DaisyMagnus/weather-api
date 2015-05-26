require './condition.rb'
require './hurricane.rb'
require './sunrise.rb'
require './tendays.rb'

puts "What location would you like information for?"
input = gets.chomp
# if input.match("^[A-Z](.+)")
#   puts "Okay. Here's a summary for #{input}"
# elsif input.match("^(\d){5}")
#   puts "Okay. Here's the summary for #{input}"
# else
#   puts "I don't know that one."
# end


x = ConditionsSummary.new(input)
y = SunriseSunset.new(input)
z =TenDayForecast.new(input)
# a = Hurricanes.new
p x.temp
p y.sunrise
p y.sunset
p z.day
p a.storm
