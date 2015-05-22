require 'httparty'

class Hurricanes
    def initialize
      @currenthurricane = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/currenthurricane/view.json")
    end

    def storm
       @currenthurricane["response"]["features"]["currenthurricane"] 
    end
end

storm = Hurricanes.new
p storm.storm
