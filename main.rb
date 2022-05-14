require "./character.rb"
require "./weapons.rb"
require "./armor.rb"
require "./enemy.rb"

# enemy create (name, damage, hit_point)
ork = Enemy.new("Tarkar", 14, 25)
elf = Enemy.new("Ellair", 25, 10)
dwarf = Enemy.new("Grim", 20, 20)

# weapons create(name, damage)
arrow = Weapon.new("Arrow", 7)
sword = Weapon.new("Sword", 12)
stick = Weapon.new("Stick", 19)

# armors create(name, defense)
lats = Armor.new("Lats", 20)
chain_mail = Armor.new("Cain mail", 17)

# room create
room1 = Room.new 
room2 = Room.new 
room3 = Room.new 


# dangeon create
dangeon = Dangeon.new

#add room 
dangeon.add_room(room1)
dangeon.add_room(room2)
dangeon.add_room(room3)

puts "Enter name:"
name = gets.chomp.to_s
hero_class = nil
weapon = nil
armor = nil

# choose hero class
while hero_class == nil
  puts "Enter you class:"
  puts " 1 - Mage"
  puts " 2 - Warrior"
  puts "   (input 1 or 2 for choose)"
  choose = gets.chomp.to_i
  if choose == 1
    hero_class = "Mage"
  elsif choose == 2
    hero_class = "Warrior"
  else puts "pleace, choose from the suggested!"   end
end

# choose weapon
while weapon == nil
  puts "Now, choose your weapon:"
  puts " 1 - Arrow"
  puts " 2 - Sword"
  puts "   (input 1 or 2 for choose)"
  choose = gets.chomp.to_i
  if choose == 1
    weapon = arrow
  elsif choose == 2
    weapon = sword
  else puts "pleace, choose from the suggested!"   end
end

# chose armor
while armor == nil
  puts "Now, choose your weapon:"
  puts " 1 - Lats"
  puts " 2 - Chain mail"
  puts "   (input 1 or 2 for choose)"
  choose = gets.chomp.to_i
  if choose == 1
    armor = lats
  elsif choose == 2
    armor = chain_mail
  else puts "pleace, choose from the suggested!"   end
end

my_hero = Character.new(name, hero_class, weapon, armor)

# Character characteristics
puts "Your name - #{my_hero.name}"
puts "Your class - #{my_hero.hero_class}"
puts "Your weapon - #{my_hero.weapon.type}"
puts "Your damage -  #{my_hero.damage}"
puts "Your armor -  #{my_hero.armor.type}"
puts "Your defense -  #{my_hero.defense}"
puts "Your hit point -  #{my_hero.hit_point}"
sleep 2
# fight
puts "You have been attacked!!!"
while my_hero.hit_point > 0
  puts "#{ork.name} is attacking you"
  ork.attack my_hero
  sleep 1
  puts "Your hit point -  #{my_hero.hit_point}"
end
my_hero.dead

#заход в комнату , бой со всеми врагами по очереди, сбор дропа, предложение о переходе в другую комнату и сначала