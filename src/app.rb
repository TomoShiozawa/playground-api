# frozen_string_literal: true

require 'rubygems'
require 'sinatra'

require_relative './controllers'

get '/busho' do
  BushoController.get
end

get '/yesno' do
  YesNoController.get
end
