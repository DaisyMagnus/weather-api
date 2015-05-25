require 'httparty'

class CurrentAlerts
    def initialize(zip)
      @alerts = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{zip}.json")
    end

    def current
         "The current alerts are: http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/alerts/q/#{zip}.json"
    end
end

x = CurrentAlerts.new(27278)
p x.current
p x
