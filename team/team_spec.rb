require("Minitest/autorun")
require_relative("./team.rb")

class TestTeam <MiniTest::Test

def test_team_name
  team = Team.new("Best Team", 0, "", [])
  assert_equal("Best Team", team.team_name)
end

def test_coach
  team = Team.new("Best Team", 0, "Awesome Coach", [])
  assert_equal("Awesome Coach", team.coach)
end

def test_players
  team = Team.new("Best Team", 0, "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
  assert_equal("Best Player", team.players[0])
end

def set_coach
  team = Team.new("Best Team", 0, "Good Coach", ["players", "more players"])
  team.coach("Awesome Coach")
  assert_equal("Awesome Coach", team.coach())
end

# def test_add_player
#   team = Team.new("Best Team", "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
#   team.players.push("Great Player")
#   assert_equal("Great Player", team.players.last)
# end

# def test_add_player_method
#   team = Team.new("Best Team", "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
#   new_player = "Great Player"
#   assert_equal(["Best Player", "Good Player", "Other Good Player", "Great Player"], team.add_player(new_player))
# end

def test_add_player_method
  team = Team.new("Best Team", 0, "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
  new_player = "Great Player"
  assert_equal("Great Player", team.add_player(new_player).last)
end

# def test_check_for_player
#   team = Team.new("Best Team", "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
#   player = "Best Player"
#   assert_equal(true, team.check_for_player(player))
# end

def test_check_for_player
  team = Team.new("Best Team", 0, "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
  player = "Best Player"
  assert_equal("Best Player", team.check_for_player(player))
end

# def test_won_game
#   team = Team.new("Best Team", 0, "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
#   assert_equal(3, team.win)
# end

def test_won_game
  team = Team.new("Best Team", 0, "Awesome Coach", ["Best Player", "Good Player", "Other Good Player"])
  result = "win"
  assert_equal(3, team.update_score(result))
end





end
