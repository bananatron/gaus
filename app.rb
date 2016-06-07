require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require Dir.pwd + "/models/student.rb"


module Gaus
  class App < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    
    get '/' do
      defined?(Student)
      erb :index
    end
  
    get '/students' do
      erb :students
    end

  end
end



