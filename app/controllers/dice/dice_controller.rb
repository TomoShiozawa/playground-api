# frozen_string_literal: true

require 'json'
require 'sinatra'

# DiceController
class DiceController < Sinatra::Base
  configure do
    code_regexp = /\d+d\d+\z|\d+d\d+[\+\-]\d+\z/
    set :code_regexp, code_regexp
  end

  before do
    content_type :json
  end

  get '/dice' do
    { result: rand(1..6) }.to_json
  end

  get '/dice/:code' do
    code = params[:code]

    unless settings.code_regexp.match?(code)
      return {
        result: 'ERROR. The format of code is incorrect.'
      }.to_json
    end

    num = code.split('d')[0].to_i
    sides = code.split('d')[1].to_i
    add = code.match(/[\+\-]\d+/) ? code.match(/[\+\-]\d+/)[0].to_i : nil

    result = 0
    num.times do
      result += (1..sides).to_a.sample
    end
    result += add if add

    { result: result }.to_json
  end
end
