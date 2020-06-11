# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }
  subject(:player2) { described_class.new('Player2') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Alex'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      player.attack(player2)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player.receive_damage }.to change { player.hit_points }.by(-10)
    end
  end
end
