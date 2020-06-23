# frozen_string_literal: true

require 'sinatra'
require './lib/game'
require './lib/player'

class Battle < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turns
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
