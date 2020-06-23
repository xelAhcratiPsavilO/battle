# frozen_string_literal: true

class Game
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_player = player1
  end

  def attack
    opponent_of(current_player).receive_damage
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def switch_turns
    @current_player = opponent_of(current_player)
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private

  attr_reader :players

  def opponent_of(the_player)
    players.reject { |player| player == the_player }.first
  end

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end
end
