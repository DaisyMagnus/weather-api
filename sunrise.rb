require 'httparty'

class SunriseSunset
  attr_reader :zip, :page
  def initialize(zip)
    @zip = zip
    @page = get_data
  end

  def sunrise
      hour = @page["sun_phase"]["sunrise"]["hour"]
      minute = @page["sun_phase"]["sunrise"]["minute"]
      "#{hour}:#{minute}am"
  end

  def sunset
    hour = (@page["sun_phase"]["sunset"]["hour"].to_i) - 12
    minute = @page["sun_phase"]["sunset"]["minute"]
    "#{hour}:#{minute}pm"
  end

  private def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/astronomy/q/#{zip}.json")
  end
end
