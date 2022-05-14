class Enemy
  attr_reader :name, :damage
  attr_accessor :hit_point

  def initialize(name, damage, hit_point)
    @name = name
    @damage = damage
    @hit_point = hit_point
  end

  def attack(target)
    target.hit_point -= (@damage - target.protection)
    puts "Your hit point: #{target.hit_point}"
  end
end
