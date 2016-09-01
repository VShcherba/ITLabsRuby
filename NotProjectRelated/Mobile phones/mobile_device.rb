class MobileDevice

  attr_accessor :battery_capacity, :current_battery, :screen, :size, :ram, :charging_speed, :energy_consumption

  def initialize
    @current_battery = 0
  end

  def charging(hours)
    hours.times do
      if @current_battery < @battery_capacity
        @current_battery += @charging_speed
        puts "Charged to #{@current_battery}"
      else
        puts "Fully charged"
        break
      end
    end

  end

  def turn_off
    if @current_battery <= 0
      puts 'device is turned off'
    else
      puts "no need to turn off. Battery: #{@current_battery}"
    end

  end

  def show_video(hours)
    hours.times do
      if @current_battery >= @energy_consumption
        @current_battery -= @energy_consumption
        puts "Playing Video"
      else
        puts "Battery is too low. Battery: #{@current_battery}"
        turn_off
        break
      end
    end
  end

end
