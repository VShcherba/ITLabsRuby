require_relative 'features'
require_relative 'mobile_device'

class Tablet < MobileDevice

include Wireless_charging

  def initialize
    super
    @screen = 9
    @battery_capacity = 6000
    @charging_speed = 3000
    @energy_consumption = 1000
  end
end

sony = Tablet.new
puts sony.battery_capacity
sony.charging(5)
puts sony.battery_capacity
sony.show_video(10)
sony.wireless_charging(5)


