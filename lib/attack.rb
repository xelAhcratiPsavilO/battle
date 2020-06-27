# frozen_string_literal: true

class Attack
  def initialize(player)
    @player = player
  end

  def self.to(player)
    new(player).to
  end

  def to
    @player.receive_damage(random_damage)
  end

  private

  def random_damage
    Kernel.rand(1..10)
  end
end
