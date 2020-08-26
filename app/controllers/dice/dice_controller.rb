# frozen_string_literal: true

require 'json'
require 'sinatra'

# DiceController
class DiceController < Sinatra::Base
  get '/dice' do
    { result: rand(1..6) }.to_json
  end
end
