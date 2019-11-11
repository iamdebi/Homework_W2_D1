require('minitest/autorun')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_can_create_team
    team = Team.new("ABDE FC", ["Debbie", "Jamie", "cheryl", "Amy"],"Fiona" )
  end

  def test_team_name
    team = Team.new("ABDE FC", ["Debbie", "Jamie", "cheryl", "Amy"], "Fiona" )
    assert_equal("ABDE FC", team.team_name)
  end

  def test_team_players
    team = Team.new("ABDE FC", ["Debbie", "Jamie", "cheryl", "Amy"], "Fiona" )
    assert_equal(["Debbie", "Jamie", "cheryl", "Amy"], team.players)
  end

  def test_team_coach
    team = Team.new("ABDE FC", ["Debbie", "Jamie", "cheryl", "Amy"], "Fiona" )
    assert_equal("Fiona", team.coach)
  end

  def test_setter_coach
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "cheryl", "Amy"], "Fiona")
    new_team.coach = "Steve"
    assert_equal("Steve", new_team.coach)
  end

  def test_add_player
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "cheryl", "Amy"], "Fiona")
    new_team.add_player("Mike")
    assert_equal(["Debbie", "Jamie", "cheryl", "Amy", "Mike"],new_team.players)
  end

  def test_player_in_players
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "Cheryl", "Amy"], "Fiona")
    result = new_team.is_a_player("Debbie")
    assert_equal(true, result)
  end

  def test_player_in_players
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "Cheryl", "Amy"], "Fiona")
    result = new_team.is_a_player("Phill")
    assert_equal(false, result)
  end

  def test_points
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "Cheryl", "Amy"], "Fiona")
    assert_equal(0, new_team.points)
  end

  def test_win
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "Cheryl", "Amy"], "Fiona")
    new_team.points_update("win")
    p new_team.points
    assert_equal(3, new_team.points)
  end

  def test_draw
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "Cheryl", "Amy"], "Fiona")
    new_team.points_update("draw")
    assert_equal(1, new_team.points)
  end

  def test_loss
    new_team = Team.new("ABDE FC", ["Debbie", "Jamie", "Cheryl", "Amy"], "Fiona")
    new_team.points_update("loss")
    assert_equal(0, new_team.points)
  end


end
