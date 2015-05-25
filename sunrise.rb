require 'httparty'

class SunriseSunset
    def initialize(zip)
      @astronomy = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip}.json")
    end

    def sunrise
        "Sunrise was at #{@astronomy["sun_phase"]["sunrise"]["hour"]}:#{@astronomy["sun_phase"]["sunrise"]["minute"]}am. Did you see it?"
    end

    def sunset
       "Sunset is at #{((@astronomy["sun_phase"]["sunset"]["hour"]).to_i)-12}:#{@astronomy["sun_phase"]["sunset"]["minute"]}pm. Take a minute and enjoy it"
    end
end
