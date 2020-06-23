# frozen_string_literal: true

require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

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
end
