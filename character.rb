class Character
  attr_reader :name, :hero_class, :weapon, :damage, :armor, :defense, :hit_point
  attr_accessor :hit_point

  def initialize(name, hero_class, weapon, armor)
    @name = name
    @hero_class = hero_class
    @weapon = weapon
    @damage = weapon.weapon_damage
    @armor = armor
    @defense = armor.armor_defense
    @hit_point = 100
    @inventory = []
  end

  def change_weapon(weapon)
    @weapon = weapon
    @damage = weapon.weapon_damage
  end

  def change_armor(armor)
    @armor = armor
    @defense = armor.armor_defense
  end

  def attack(target)
    target.hit_point -= @damage
    puts "Hit point your target: #{target.hit_point}"
  end

  def pick_up_item(item)
    @inventory << item
  end

  def show_inventory
    @inventory
  end

  def dead
    puts "You are dead. Game over!"
  end
end

#добавить уровень персонажа (шкала от 0 до 100 при заполнении увеличивает здоровье и характеристики)