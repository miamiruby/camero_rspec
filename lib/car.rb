## Base Car Class
# + current speed (property) – default value 0
# + accelerate (method)
# + drive (method)
# + brand (property) - default value ‘unknown’
# + max speed (property) - default value 0
class Car
  attr_accessor :current_speed
  attr_accessor :brand
  attr_accessor :max_speed
  def initialize
    @current_speed = 0
    @max_speed = 0
    @brand = 'unknown'
  end
  def accelerate
    @current_speed += 1
  end
  def drive
    accelerate
  end
end

# Camaro Car Class
# + Inherits Base Car
# + brand (property) - default value ‘Chevy’
# + max speed (property) – default value 200
class Camero < Car
  def initialize
    @current_speed = 0
    @max_speed = 200
    @brand = 'Chevy'
  end
  def drive
    return 'Camero has hit the cars max speed' if (@current_speed + 1) > @max_speed
    accelerate
  end
end
