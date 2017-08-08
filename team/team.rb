class Team

attr_reader( :team_name, :points, :coach, :players )
attr_writer( :team_name, :points, :coach, :players )

  def initialize( team_name, points, coach, players)
    ##def initialize(name)
    ##@name = name
    ##@points = 0
    ##end
    @team_name = team_name
    @points = points
    @coach = coach
    @players = players
  end

  def add_player(new_player)
    players.push(new_player)
  end

  # def check_for_player(player)
  #   players.include? player
  # end

  def check_for_player(player)
    if players.include?(player)
      return player
    end
    return "Not on the team"
  end

  # def win
  #   win = 3
  #   points = @points + win
  # end

  def update_score(result)
    outcome = result

    case outcome
    when "win"
      points = @points + 3
    when "draw"
      points = @points + 1
    when "lose"
      points = @points + 0
    end

    return points
  end

## def play_game(result)
##   @points += 3 if(result == :win)
##   @points += 1 if(result == :draw)
## end

## def play_game( result )
##   @points += 1 if (result == :win)
##   end
## end




end
