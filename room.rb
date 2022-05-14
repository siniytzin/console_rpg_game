class Room
  def initialize
    @enemy_in_room = []
    @chest_in_room = []
  end

  def add_enemy(enemy)
    @enemy_in_room << enemy
  end

  def add_chest(chest)
    @chest_in_room << chest
  end

  #содержит в себе сундук, врагов
  #пускает в себя персонажа
  #после зачистки переносит игрока в след комнату

end
