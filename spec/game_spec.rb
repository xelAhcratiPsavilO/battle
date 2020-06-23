# frozen_string_literal: true

require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  subject(:finished_game) { described_class.new(dead_player, player2) }
  let(:player1) { double :player, hit_points: 100 }
  let(:player2) { double :player, hit_points: 100 }
  let(:dead_player) { double :player, hit_points: 0 }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'damages the player2 during player1 turn' do
      expect(player2).to receive(:receive_damage)
      game.attack
    end
    it 'damages the player1 during player2 turn' do
      game.switch_turns
      expect(player1).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#current_player' do
    it 'starts as player1' do
      expect(game.current_player).to eq player1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_player).to eq player2
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
