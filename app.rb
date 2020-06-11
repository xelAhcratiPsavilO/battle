# frozen_string_literal: true

require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
