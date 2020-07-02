# frozen_string_literal: true

class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_damage(damage)
    @hit_points -= damage
  end

  def computer?
    false
  end
end
