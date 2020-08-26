# frozen_string_literal: true

require 'json'
require 'sinatra'

# YesNoController
class YesNoController < Sinatra::Base
  get '/yesno' do
    { answer: %w[yes no].sample }.to_json
  end
end
