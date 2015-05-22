require 'httparty'

class SunriseSunset
    def initialize(zip)
      @astronomy = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip}.json")
    end

    def sunrise
       "Sunrise is at #{@astronomy["sun_phase"]["sunrise"]["hour"]}:#{@astronomy["sun_phase"]["sunrise"]["minute"]}"
    end

    def sunset
       @astronomy["sun_phase"]["sunset"]["hour"]
    end
end

sun = SunriseSunset.new(33109)
sun.sunrise
sun.sunset
