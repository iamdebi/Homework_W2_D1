class Team

  attr_reader :team_name, :players, :coach, :points
  attr_writer :team_name, :player, :coach, :point

  def initialize (team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new_player)
    players.push(new_player)
  end

  def is_a_player(player)
    players.include?(player)
  end

  def points_update(result)
    if (result == "win")
      @points += 3
    elsif (result == "draw")
      @points += 1
    else
      return (@points)
    end
  end





end
