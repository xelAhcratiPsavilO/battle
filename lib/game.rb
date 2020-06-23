# frozen_string_literal: true

class Game
  attr_reader :player1, :player2, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = player1
  end

  def attack(player)
    player.receive_damage
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(the_player)
    @players.reject { |player| player == the_player }.first
  end
end
