require_relative 'mobile_phone'
require_relative 'features'

class Highend_mobile_phone <  Mobile_phone
  include Wireless_charging
  include Turbo_charge
  include GPS

  def initialize
    super
    @battery_capacity = 3600
    @screen = 6
    @energy_consumption = 1000
  end
end