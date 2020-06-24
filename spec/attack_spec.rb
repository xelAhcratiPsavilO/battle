# frozen_string_literal: true

require 'attack'

describe Attack do
  subject(:attack) { described_class }
  let(:player) { double :player }

  describe '#to' do
    it 'damages the player' do
      expect(player).to receive(:receive_damage)
      attack.to(player)
    end
  end
end
