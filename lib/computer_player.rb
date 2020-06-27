# frozen_string_literal: true

require_relative 'player'

class ComputerPlayer < Player
  def initialize(name = 'Com')
    super
  end

  def computer?
    true
  end
end
