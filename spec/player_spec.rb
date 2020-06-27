# frozen_string_literal: true

require 'player'

describe Player do
  subject(:player) { described_class.new('Christina') }
  subject(:player2) { described_class.new('Alex') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player.name).to eq 'Christina'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player.receive_damage(10) }.to change { player.hit_points }.by(-10)
    end
  end
end
