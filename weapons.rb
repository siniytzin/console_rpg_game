class Weapon
  attr_reader :type, :weapon_damage

  def initialize(type, weapon_damage)
    @type = type
    @weapon_damage = weapon_damage
  end
end
