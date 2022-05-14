class Armor 
  attr_reader :type, :armor_protection
  def initialize(type, armor_protection)
  @type = type
  @armor_protection = armor_protection
  end
end
