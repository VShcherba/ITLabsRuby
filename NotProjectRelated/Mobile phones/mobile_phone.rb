require_relative 'features'
require_relative 'mobile_device'


class Mobile_phone < MobileDevice

#include Turbo_charge

  def initialize
    super
    @battery_capacity = 3200
    @charging_speed = 500
    @screen = 5
    @energy_consumption = 800
  end
end

iphone = Mobile_phone.new
iphone.charging(8)
iphone.show_video(5)
