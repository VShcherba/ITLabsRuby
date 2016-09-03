require_relative 'features'
require_relative 'mobile_device'

class Tablet < MobileDevice

include Wireless_charging
include GPS

  def initialize
    super
    @screen = 9
    @battery_capacity = 6000
    @charging_speed = 3000
    @energy_consumption = 1000
  end
end