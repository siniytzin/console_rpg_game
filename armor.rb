class Armor 
  attr_reader :type, :armor_defense
  def initialize(type, armor_defense)
  @type = type
  @armor_defense = armor_defense
  end
end
