#!/usr/bin/env ruby

require 'maclight'
require 'weather-report'

weather = WeatherReport.get '東京'

if weather.today.umbrella?
  60.times do
    MacLight.capslock(true)
    sleep 0.5

    MacLight.capslock(false)
    sleep 0.5
  end
  puts "You have to take an umbrella. " + Time.now.strftime("%Y-%m-%d %H:%M:%S")
else
  puts "There is no worry about rain. " + Time.now.strftime("%Y-%m-%d %H:%M:%S")
end

