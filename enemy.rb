class Enemy
  attr_reader :name, :damage
  attr_accessor :hit_point

  def initialize(name, damage, hit_point)
    @name = name
    @damage = damage
    @hit_point = hit_point
  end

  def attack(target)
    damage_multiplier = rand(1..3)
    if target.defense < (@damage * damage_multiplier)
      target.hit_point -= ((@damage * damage_multiplier) - target.defense)
      puts "Damage: #{@damage * damage_multiplier}!"
      puts "Your hit point: #{target.hit_point}"
    else puts "Armor is not pierced!"     end
  end
end
