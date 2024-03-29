# frozen_string_literal: true

require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/computer_player'
require './lib/attack'

class Battle < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = if params[:player2_name].empty?
                ComputerPlayer.new
              else
                Player.new(params[:player2_name])
              end
    Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    attack_and_redirect(@game)
  end

  get '/attack' do
    erb :attack
  end

  get '/game-over' do
    erb :game_over
  end

  post '/switch-turns' do
    @game.switch_turns
    if @game.current_player.computer?
      attack_and_redirect(@game)
    else
      redirect '/play'
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

  private

  def attack_and_redirect(_game)
    Attack.to(@game.opponent)
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end
end
