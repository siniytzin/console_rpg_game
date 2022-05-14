class Dangeon
  def initialize
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def current_room
    @rooms.first
  end

  def next_room
    @rooms.delete_at(0) if current_room.enemys_in_room == []
  end
end
