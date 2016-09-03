require_relative 'mobile_device'


module Wireless_charging
  def initialize
    super
    @wireless_charging_speed = 800
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
  def charging_speed
    @charging_speed * 2
  end
end

module GPS
  private
  attr_writer :gps

  public
  attr_reader :gps

  def initialize
    super
    @gps ||= 'off'
  end

  def set_gps_mode(param)
    case param
      when 'on'
        self.gps = 'on'
      when 'off'
        self.gps= 'off'
    end
  end

end