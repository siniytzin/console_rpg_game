class Character
  attr_reader :name, :hero_class, :weapon, :damage, :armor, :protection, :hit_point
  attr_accessor :hit_point

  def initialize(name, hero_class, weapon, armor)
    @name = name
    @hero_class = hero_class
    @weapon = weapon
    @damage = +weapon.weapon_damage
    @armor = armor
    @protection = +armor.armor_protection
    @hit_point = 100
  end

  def change_weapon(weapon)
    @weapon = weapon
    @damage = +weapon.weapon_damage
  end

  def change_armor(armor)
    @armor = armor
    @protection = +armor.armor_protectiion
  end

  def attack(target)
    target.hit_point -= @damage
    puts "Hit point your target: #{target.hit_point}"
  end

  def dead
    puts "You are dead. Game over!"
  end
end
