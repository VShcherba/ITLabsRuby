require_relative 'features'
require_relative 'mobile_phone'
require_relative 'tablet'
require_relative 'highend_mobile_phone'



sony = Tablet.new
puts sony.battery_capacity
sony.charging(5)
puts sony.battery_capacity
sony.show_video(10)
sony.wireless_charging(5)
sony.set_gps_mode('on')
puts sony.gps


meizu = Highend_mobile_phone.new
meizu.charging(2)

puts meizu.current_battery

meizu.wireless_charging(3)
puts meizu.current_battery
meizu.set_gps_mode('on')
puts meizu.gps

iphone = Mobile_phone.new
iphone.charging(8)
puts iphone.current_battery
iphone.show_video(5)
puts iphone.charging_speed