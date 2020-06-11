# frozen_string_literal: true

require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
