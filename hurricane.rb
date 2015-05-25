require 'httparty'

class Hurricanes
    def initialize
      @currenthurricane = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/currenthurricane/view.json")
    end

    def storm
       "There is #{@currenthurricane["response"]["features"]["currenthurricane"]} active storm. But nothing you should be concerned with."
    end
end
