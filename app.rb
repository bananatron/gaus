require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

module Gaus
  class App < Sinatra::Base
    get '/' do
      erb :index
    end
  end
end



