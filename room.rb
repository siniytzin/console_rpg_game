class Room
  attr_reader :enemys_in_room
  def initialize
    @enemys_in_room = []
    @chests_in_room = []
    @character_in_room = nil
  end
  def add_character(character)
    @character_in_room = character
  end

  def add_enemy(enemy)
    @enemys_in_room << enemy
  end

  def add_chest(chest)
    @chests_in_room << chest
  end


  #содержит в себе сундук, врагов
  #пускает в себя персонажа
  #после зачистки переносит игрока в след комнату

end
