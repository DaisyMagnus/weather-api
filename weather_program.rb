require './condition.rb'
require './hurricane.rb'
require './sunrise.rb'
require './tendays.rb'

puts "What location would you like information for?"
input = gets.chomp
array = []
 if input.match(/^[A-Z](.+)/)
 	 x =input.split
 	  state = x.pop
 		  if x.length > 1
 			  city = x.join("_")
 		  else city = x.pop
 		  end
    city_state= "#{state}/#{city}"
    zip = city_state.chomp(",")
    zip = zip.chomp("")
 elsif input.match(/^(\d){5}/)
 	 zip = input
 else
 	 p "I'm not sure about that one.  Please try again."
end



x = ConditionsSummary.new(zip)
y = SunriseSunset.new(zip)
z =TenDayForecast.new(zip)
a = Hurricanes.new
p x.temp
p "Sunrise was at #{y.sunrise}."
p "The sun will set at #{y.sunset} today."
p z.day
p "There is #{a.storm} storm(s)."
