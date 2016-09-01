require_relative 'mobile_device'


module Wireless_charging
  def initialize
    super
    @wireless_charging_speed = 2000
  end


  def wireless_charging(hours)
    hours.times do
      if @current_battery < @battery_capacity
        @current_battery += @wireless_charging_speed
        puts "Charged to #{@current_battery}"
      else
        puts "Fully charged"
        break
      end
    end
  end
end



module Turbo_charge
  def charging(hours)
    charge(hours)
  end
end